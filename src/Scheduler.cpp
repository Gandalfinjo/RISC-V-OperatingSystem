//
// Created by os on 10/8/25.
//

#include "../h/Scheduler.hpp"
#include "../h/KThread.hpp"

KThread* Scheduler::head = nullptr;
KThread* Scheduler::tail = nullptr;

KThread* Scheduler::get() {
    if (!head) return nullptr;

    KThread* thread = head;
    head = head->schedulerNext;

    if (!head) tail = nullptr;
    thread->schedulerNext = nullptr;

    return thread;
}

void Scheduler::put(KThread* thread) {
    if (!head) head = thread;
    else tail->schedulerNext = thread;
    tail = thread;
}

bool Scheduler::isEmpty() {
    return head == nullptr;
}