#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    userMain();
}

// extern void printString(const char*);
//
// sem_t sem;
//
// void worker(void* arg) {
//     char* name = (char*)arg;
//     for (int i = 0; i < 3; i++) {
//         sem_wait(sem);
//         printString(name);
//         printString(" in critical section\n");
//         for (int j = 0; j < 100000; j++);
//         sem_signal(sem);
//         Thread::yield();
//     }
// }

void main() {
    MemoryAllocator::initHeap();
    Riscv::setupTrapHandler();

    thread_t mainThread, userBody;

    mainThread = Thread::createThread(nullptr, nullptr);
    Thread::running = mainThread;
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);

    while (!Scheduler::isEmpty()) {
        Thread::yield();
    }

    // thread_t t1, t2, mainThread;
    // mainThread = Thread::createThread(nullptr, nullptr);
    // thread_create(&t1, worker, (void*)"Thread 1");
    // thread_create(&t2, worker, (void*)"Thread 2");
    // Thread::running = mainThread;
    // mainThread->setState(RUNNING);
    // sem_open(&sem, 1);
    //
    // while (!Scheduler::isEmpty()) {
    //     Thread::yield();
    // }
    //
    // sem_close(sem);
}