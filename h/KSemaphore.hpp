//
// Created by os on 10/15/25.
//

#ifndef PROJECT_BASE_SEMAPHORE_HPP
#define PROJECT_BASE_SEMAPHORE_HPP

#include "MemoryAllocator.hpp"
#include "../lib/hw.h"

class KThread;

class KSemaphore {
public:
    static KSemaphore* createSemaphore(uint64 init);

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
    explicit KSemaphore(uint64 init) : val(init) {}

    int val;
    KThread* head = nullptr;
    KThread* tail = nullptr;

    KThread* get();
    void put(KThread*);
};

#endif //PROJECT_BASE_SEMAPHORE_HPP