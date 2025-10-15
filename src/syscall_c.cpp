//
// Created by os on 10/7/25.
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    if (size == 0) return nullptr;

    size_t blocks = size / MEM_BLOCK_SIZE;
    if (size % MEM_BLOCK_SIZE != 0) blocks++;

    void* result;

    asm volatile("mv a1, %0" :: "r"(blocks));
    asm volatile("li a0, 0x01");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    return result;
}

int mem_free(void* addr) {
    int result;

    asm volatile("mv a1, %0" :: "r"(addr));
    asm volatile("li a0, 0x02");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    return result;
}

size_t mem_get_free_space() {
    size_t result;

    asm volatile("li a0, 0x03");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    return result;
}

size_t mem_get_largest_free_block() {
    size_t result;
    asm volatile("li a0, 0x04");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));
    return result;
}

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    if (!handle || !start_routine) return -1;

    size_t stackBytes = DEFAULT_STACK_SIZE;
    void* stack = mem_alloc(stackBytes);
    if (!stack) return -1;

    int result;

    asm volatile("mv a1, %0" :: "r"(handle));
    asm volatile("mv a2, %0" :: "r"(start_routine));
    asm volatile("mv a3, %0" :: "r"(arg));
    asm volatile("mv a4, %0" :: "r"(stack));
    asm volatile("li a0, 0x11");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    if (result < 0) {
        mem_free(stack);
    }

    return result;
}

int thread_exit() {
    int result;

    asm volatile("li a0, 0x12");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    return result;
}

void thread_dispatch() {
    asm volatile("li a0, 0x13");
    asm volatile("ecall");
}

int sem_open(sem_t* handle, unsigned init) {
    int result;

    asm volatile("mv a2, %0" :: "r"((uint64)init));
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    asm volatile("li a0, 0x21");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    return result;
}

int sem_close(sem_t handle) {
    int result;

    asm volatile("mv a1, %0" :: "r"(handle));
    asm volatile("li a0, 0x22");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    return result;
}

int sem_wait(sem_t id) {
    int result;

    asm volatile("mv a1, %0" :: "r"(id));
    asm volatile("li a0, 0x23");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    return result;
}

int sem_signal(sem_t id) {
    int result;

    asm volatile("mv a1, %0" :: "r"(id));
    asm volatile("li a0, 0x24");
    asm volatile("ecall");
    asm volatile("mv %0, a0" : "=r"(result));

    return result;
}