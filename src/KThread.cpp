//
// Created by os on 10/8/25.
//

#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Riscv.hpp"
#include "../lib/hw.h"

KThread* KThread::running = nullptr;

int KThread::staticId = 0;

KThread::KThread(Body body, void* args, void* stack)
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    state(NEW) {
    if (body != nullptr) {
        //Scheduler::put(this);
    }
}

KThread::KThread(Body body)
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    state(NEW) {
    if (body != nullptr) {
        //Scheduler::put(this);
    }
}

KThread::~KThread() {
    MemoryAllocator::mem_free(stack);
    stack = nullptr;
}

KThread* KThread::createThread(Body body, void* args, void* stack) {
    return new KThread(body, args, stack);
}

KThread* KThread::createThread(Body body) {
    return new KThread(body);
}

void KThread::start() {
    if (state != NEW) return;

    state = READY;
    Scheduler::put(this);
}

void KThread::exit() {
    state = FINISHED;
}

void KThread::wrapper() {
    Riscv::popSppSpie();
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