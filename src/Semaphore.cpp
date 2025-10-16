//
// Created by os on 10/15/25.
//

#include "../h/Semaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

Semaphore *Semaphore::createSemaphore(uint64 init) {
    return new Semaphore(init);
}

KThread* Semaphore::get() {
    if (!head) return nullptr;

    KThread* thread = head;
    head = head->semaphoreNext;

    if (!head) tail = nullptr;
    thread->semaphoreNext = nullptr;

    return thread;
}


void Semaphore::put(KThread *thread) {
    if (!head) head = thread;
    else tail->semaphoreNext = thread;
    tail = thread;
}

void Semaphore::wait() {
    val--;

    if (val < 0) {
        KThread::running->setState(BLOCKED);
        put(KThread::running);
        KThread::dispatch();
    }
}

void Semaphore::signal() {
    val++;

    if (val <= 0) {
        KThread* thread = get();

        if (thread) {
            thread->setState(READY);
            Scheduler::put(thread);
        }
    }
}

void Semaphore::close() {
    while (head) {
        KThread* thread = get();
        thread->setState(READY);
        Scheduler::put(thread);
    }
}