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