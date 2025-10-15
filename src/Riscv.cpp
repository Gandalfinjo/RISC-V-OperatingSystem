//
// Created by os on 10/7/25.
//

#include "../h/Riscv.hpp"

#include "../h/MemoryAllocator.hpp"
#include "../h/Thread.hpp"
#include "../lib/hw.h"

constexpr uint64 MEM_ALLOC = 0x01;
constexpr uint64 MEM_FREE = 0x02;
constexpr uint64 MEM_GET_FREE_SPACE = 0x03;
constexpr uint64 MEM_GET_LARGEST_FREE_BLOCK = 0x04;

constexpr uint64 THREAD_CREATE = 0x11;
constexpr uint64 THREAD_EXIT = 0x12;
constexpr uint64 THREAD_DISPATCH = 0x13;

void Riscv::setupTrapHandler() {
    unsigned long addr = (unsigned long)&trap_handler;
    asm volatile("csrw stvec, %0" :: "r"(addr));
}

void Riscv::trapHandler() {
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    asm volatile("csrr %0, sepc" : "=r"(sepc));

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
        uint64 code;
        asm volatile("mv %0, a0" : "=r"(code));

        switch (code) {
            case MEM_ALLOC: {
                size_t size;
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
                asm volatile("mv %0, a1" : "=r"(size));
                void* ptr = MemoryAllocator::mem_alloc(size);
                asm volatile("mv a0, %0" :: "r"(ptr));
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
                break;
            }
            case MEM_FREE: {
                void* addr;
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
                asm volatile("mv %0, a1" : "=r"(addr));
                int status = MemoryAllocator::mem_free(addr);
                asm volatile("mv a0, %0" :: "r"(status));
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
                break;
            }
            case MEM_GET_FREE_SPACE: {
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
                asm volatile("mv a0, %0" :: "r"(freeSpace));
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
                break;
            }
            case MEM_GET_LARGEST_FREE_BLOCK: {
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
                asm volatile("mv a0, %0" :: "r"(largest));
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
                break;
            }
            case THREAD_CREATE: {
                Thread** handle = nullptr;
                void (*start_routine)(void*) = nullptr;
                void* args = nullptr;
                void* stack = nullptr;

                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
                asm volatile("mv %0, a1" : "=r"(handle));
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
                asm volatile("mv %0, a2" : "=r"(start_routine));
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
                asm volatile("mv %0, a3" : "=r"(args));
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
                asm volatile("mv %0, a4" : "=r"(stack));

                size_t stackSize = DEFAULT_STACK_SIZE;

                *handle = Thread::createThread(start_routine, args, stack, stackSize);

                if (*handle != nullptr) {
                    (*handle)->start();
                    asm volatile("li a0, 0");
                }
                else asm volatile("li a0, -1");

                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));

                break;
            }
            case THREAD_EXIT: {
                if (Thread::running) {
                    Thread::running->exit();
                }

                Thread::dispatch();

                asm volatile("li a0, 0");

                break;
            }
            case THREAD_DISPATCH: {
                Thread::dispatch();

                break;
            }
            default:
                break;
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
}