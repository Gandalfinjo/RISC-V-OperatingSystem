//
// Created by os on 10/15/25.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    return mem_alloc(size);
}

void operator delete(void* ptr) {
    mem_free(ptr);
}

void* operator new[](size_t size) {
    return mem_alloc(size);
}

void operator delete[](void* ptr) {
    mem_free(ptr);
}

void Thread::wrapper(void* arg) {
    Thread* thread = (Thread*)arg;
    thread->run();
    thread_exit();
}

Thread::Thread(void (*body)(void*), void* arg)
    : myHandle(nullptr), body(body), arg(arg) {}

Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {
    if (myHandle) {
        mem_free(myHandle);
        myHandle = nullptr;
    }
}

int Thread::start() {
    if (body != nullptr) {
        return thread_create(&myHandle, body, arg);
    }

    return thread_create(&myHandle, wrapper, this);
}

void Thread::dispatch() {
    thread_dispatch();
}