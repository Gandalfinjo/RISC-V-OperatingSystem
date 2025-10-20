//
// Created by os on 10/15/25.
//

#include "../h/KSemaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

KSemaphore* KSemaphore::createSemaphore(uint64 init) {
    return new KSemaphore(init);
}

KThread* KSemaphore::get() {
    if (!head) return nullptr;

    KThread* thread = head;
    head = head->semaphoreNext;

    if (!head) tail = nullptr;
    thread->semaphoreNext = nullptr;

    return thread;
}


void KSemaphore::put(KThread *thread) {
    if (!head) head = thread;
    else tail->semaphoreNext = thread;
    tail = thread;
    thread->semaphoreNext = nullptr;
}

void KSemaphore::wait() {
    val--;

    if (val < 0) {
        KThread::running->setState(BLOCKED);
        put(KThread::running);
        KThread::dispatch();
    }
}

void KSemaphore::signal() {
    val++;

    if (val <= 0) {
        KThread* thread = get();

        if (thread) {
            thread->setState(READY);
            Scheduler::put(thread);
        }
    }
}

void KSemaphore::close() {
    while (head) {
        KThread* thread = get();
        thread->setState(READY);
        thread->semaphoreNext = nullptr;
        Scheduler::put(thread);
    }
}