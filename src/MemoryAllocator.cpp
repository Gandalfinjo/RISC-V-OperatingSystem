//
// Created by os on 10/7/25.
//

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    freeListHead->next = nullptr;
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
}

void* MemoryAllocator::mem_alloc(size_t blocks) {
    if (!freeListHead || blocks == 0) return nullptr;

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);

    BlockHeader* prev = nullptr;
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
        curr = curr->next;
    }

    if (!curr) return nullptr;

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
        newBlock->size = curr->size - totalSize;
        newBlock->next = curr->next;

        if (prev) prev->next = newBlock;
        else freeListHead = newBlock;

        curr->size = totalSize;
    }
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
}

int MemoryAllocator::mem_free(void* addr) {
    if (!addr) return -1;

    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));

    if (!freeListHead) {
        freeListHead = blockToFree;
        freeListHead->next = nullptr;
        return 0;
    }

    BlockHeader* prev = nullptr;
    BlockHeader* curr = freeListHead;

    while (curr && curr < blockToFree) {
        prev = curr;
        curr = curr->next;
    }

    blockToFree->next = curr;
    if (prev) prev->next = blockToFree;
    else freeListHead = blockToFree;

    tryToJoin(blockToFree);
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    if (!curr) return;

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}

size_t MemoryAllocator::mem_get_free_space() {
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
        if (curr->size > sizeof(BlockHeader)) {
            total += curr->size - sizeof(BlockHeader);
        }
    }

    return total;
}

size_t MemoryAllocator::mem_get_largest_free_block() {
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
        if (usable > largest) largest = usable;
    }

    return largest;
}