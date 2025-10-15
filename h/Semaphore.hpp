//
// Created by os on 10/15/25.
//

#ifndef PROJECT_BASE_SEMAPHORE_HPP
#define PROJECT_BASE_SEMAPHORE_HPP

#include "MemoryAllocator.hpp"
#include "../lib/hw.h"

class Thread;

class Semaphore {
public:
    static Semaphore* createSemaphore(uint64 init);

    void wait();
    void signal();
    void close();

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

    void* operator new[](size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    }

    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit Semaphore(uint64 init) : val(init) {}

    int val;
    Thread* head = nullptr;
    Thread* tail = nullptr;

    Thread* get();
    void put(Thread*);
};

#endif //PROJECT_BASE_SEMAPHORE_HPP