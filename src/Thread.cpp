//
// Created by os on 10/8/25.
//

#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

Thread* Thread::running = nullptr;

int Thread::staticId = 0;

Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), next(nullptr) {
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

    void* stackTop = (char*)stack + stackSize;
    initContext(&context, wrapper, stackTop);
    state = READY;
    Scheduler::put(this);
}

void Thread::exit() {
    state = FINISHED;
}

void Thread::wrapper() {
    running->body(running->args);
    running->exit();
    yield();
}

void Thread::dispatch() {
    Thread* old = running;

    if (old && old->state != FINISHED) {
        old->state = READY;
        Scheduler::put(old);
    }

    Thread* next = Scheduler::get();
    if (!next) return;

    next->state = RUNNING;
    running = next;

    contextSwitch(&old->context, &next->context);
}

void Thread::yield() {
    dispatch();
}