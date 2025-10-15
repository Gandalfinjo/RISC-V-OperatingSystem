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

Thread::Thread(Body b, void* a, void* externalStackBase, size_t externalStackSize)
    : id(staticId++), stack(nullptr), stackSize(0), body(b), args(a), state(NEW), next(nullptr) {
    stack = externalStackBase;
    stackSize = externalStackSize;
}

Thread::~Thread() {
    if (stack) {
        MemoryAllocator::mem_free(stack);
        stack = nullptr;
    }
}

Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    return new Thread(b, a, stackSizeBytes);
}

Thread* Thread::createThread(Body b, void* a, void* externalStackBase, size_t externalStackSize) {
    return new Thread(b, a, externalStackBase, externalStackSize);
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

    running = Scheduler::get();
    if (!running) return;

    running->state = RUNNING;

    if (old && old->state == FINISHED) {
        MemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
    }

    contextSwitch(&old->context, &running->context);
}

void Thread::yield() {
    asm volatile ("li a0, 0x13");
    asm volatile ("ecall");
}