//
// Created by os on 10/15/25.
//

#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"

Semaphore *Semaphore::createSemaphore(uint64 init) {
    return new Semaphore(init);
}

Thread* Semaphore::get() {
    if (!head) return nullptr;

    Thread* thread = head;
    head = head->semaphoreNext;

    if (!head) tail = nullptr;
    thread->semaphoreNext = nullptr;

    return thread;
}


void Semaphore::put(Thread *thread) {
    if (!head) head = thread;
    else tail->semaphoreNext = thread;
    tail = thread;
}

void Semaphore::wait() {
    val--;

    if (val < 0) {
        Thread::running->setState(BLOCKED);
        put(Thread::running);
        Thread::dispatch();
    }
}

void Semaphore::signal() {
    val++;

    if (val <= 0) {
        Thread* thread = get();

        if (thread) {
            thread->setState(READY);
            Scheduler::put(thread);
        }
    }
}

void Semaphore::close() {
    while (head) {
        Thread* thread = get();
        thread->setState(READY);
        Scheduler::put(thread);
    }
}