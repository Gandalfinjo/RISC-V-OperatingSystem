//
// Created by os on 10/8/25.
//

#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

Thread* Thread::running = nullptr;

Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    : stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), next(nullptr) {
    allocateStack(stackSizeBytes);
}

Thread::~Thread() {
    if (stack) {
        MemoryAllocator::mem_free(stack);
        stack = nullptr;
    }
}

void Thread::allocateStack(size_t bytes) {
    size_t blocks = bytes / MEM_BLOCK_SIZE;
    if (bytes % MEM_BLOCK_SIZE != 0) blocks++;

    stack = MemoryAllocator::mem_alloc(blocks);
    stackSize = blocks * MEM_BLOCK_SIZE;
}

void Thread::start() {
    if (state != NEW) return;

    //void* stackTop = (char*)stack + stackSize;
    //initContext(&context, wrapper, stackTop);
    state = READY;
    Scheduler::put(this);
}

void Thread::exit() {
    state = FINISHED;
}

void Thread::wrapper() {
    Thread* self = running;

    if (self && self->body) {
        self->body(self->args);
    }

    if (self) self->exit();

    while (1);
}
