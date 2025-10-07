//
// Created by os on 10/7/25.
//

#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

typedef struct BlockHeader {
    BlockHeader* next;
    size_t size;
} BlockHeader;

class MemoryAllocator {
public:
    static void initHeap();
    static void* mem_alloc(size_t); // size in bytes
    static int mem_free(void*);

    static BlockHeader* freeListHead; // public only for testing, in later phases return it to private
private:
    // static BlockHeader* freeListHead;
    static void tryToJoin(BlockHeader*);
};

#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP