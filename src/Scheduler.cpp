//
// Created by os on 10/8/25.
//

#include "../h/Scheduler.hpp"
#include "../h/Thread.hpp"

Thread* Scheduler::head = nullptr;
Thread* Scheduler::tail = nullptr;

Thread* Scheduler::get() {
    if (!head) return nullptr;

    Thread* thread = head;
    head = head->next;

    if (!head) tail = nullptr;
    thread->next = nullptr;

    return thread;
}

void Scheduler::put(Thread* thread) {
    if (!head) head = thread;
    else tail->next = thread;
    tail = thread;
}

bool Scheduler::isEmpty() {
    return head == nullptr;
}