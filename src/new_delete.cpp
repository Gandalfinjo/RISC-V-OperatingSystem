//
// Created by os on 10/8/25.
//
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

void* operator new(size_t size) {
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(blocks);
}

void operator delete(void* ptr) noexcept {
    MemoryAllocator::mem_free(ptr);
}

void* operator new[](size_t size) {
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(blocks);
}

void operator delete[](void* ptr) noexcept {
    MemoryAllocator::mem_free(ptr);
}
