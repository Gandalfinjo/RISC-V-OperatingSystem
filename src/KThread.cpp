//
// Created by os on 10/8/25.
//

#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

KThread* KThread::running = nullptr;

int KThread::staticId = 0;

KThread::KThread(Body b, void* a, size_t stackSizeBytes)
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    allocateStack(stackSizeBytes);
}

KThread::KThread(Body b, void* a, void* externalStackBase, size_t externalStackSize)
    : id(staticId++), stack(nullptr), stackSize(0), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    stack = externalStackBase;
    stackSize = externalStackSize;
}

KThread::~KThread() {
    if (stack) {
        MemoryAllocator::mem_free(stack);
        stack = nullptr;
    }
}

KThread* KThread::createThread(Body b, void* a, size_t stackSizeBytes) {
    return new KThread(b, a, stackSizeBytes);
}

KThread* KThread::createThread(Body b, void* a, void* externalStackBase, size_t externalStackSize) {
    return new KThread(b, a, externalStackBase, externalStackSize);
}

void KThread::allocateStack(size_t bytes) {
    size_t blocks = bytes / MEM_BLOCK_SIZE;
    if (bytes % MEM_BLOCK_SIZE != 0) blocks++;

    stack = MemoryAllocator::mem_alloc(blocks);
    stackSize = blocks * MEM_BLOCK_SIZE;
}

void KThread::start() {
    if (state != NEW) return;

    void* stackTop = (char*)stack + stackSize;
    initContext(&context, wrapper, stackTop);
    state = READY;
    Scheduler::put(this);
}

void KThread::exit() {
    state = FINISHED;
}

void KThread::wrapper() {
    running->body(running->args);
    running->exit();
    yield();
}

void KThread::dispatch() {
    KThread* old = running;

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

void KThread::yield() {
    asm volatile ("li a0, 0x13");
    asm volatile ("ecall");
}