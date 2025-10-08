//
// Created by os on 10/7/25.
//

#include "../h/Riscv.hpp"

#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

constexpr uint64 MEM_ALLOC = 0x01;
constexpr uint64 MEM_FREE = 0x02;
constexpr uint64 MEM_GET_FREE_SPACE = 0x03;
constexpr uint64 MEM_GET_LARGEST_FREE_BLOCK = 0x04;

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
                asm volatile("mv %0, a1" : "=r"(size));
                void* ptr = MemoryAllocator::mem_alloc(size);
                asm volatile("mv a0, %0" :: "r"(ptr));
                break;
            }
            case MEM_FREE: {
                void* addr;
                asm volatile("mv %0, a1" : "=r"(addr));
                int status = MemoryAllocator::mem_free(addr);
                asm volatile("mv a0, %0" :: "r"(status));
                break;
            }
            case MEM_GET_FREE_SPACE: {
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
                asm volatile("mv a0, %0" :: "r"(freeSpace));
                break;
            }
            case MEM_GET_LARGEST_FREE_BLOCK: {
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
                asm volatile("mv a0, %0" :: "r"(largest));
                break;
            }
            default:
                break;
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
}