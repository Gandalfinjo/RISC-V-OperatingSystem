//
// Created by os on 10/8/25.
//

#ifndef PROJECT_BASE_THREAD_HPP
#define PROJECT_BASE_THREAD_HPP

#include "MemoryAllocator.hpp"
#include "../lib/hw.h"

enum ThreadState {
    NEW,
    READY,
    RUNNING,
    BLOCKED,
    FINISHED
};

class Thread {
public:
    static int staticId;
    static Thread* running;

    friend class Scheduler;

    using Body = void(*)(void*);

    Thread(Body, void*, size_t stackSizeBytes = DEFAULT_STACK_SIZE);
    Thread(Body, void*, void*, size_t);
    ~Thread();

    static Thread* createThread(Body, void*, size_t stackSizeBytes = DEFAULT_STACK_SIZE);
    static Thread* createThread(Body, void*, void*, size_t);

    void start();                       // prepare and put in the Scheduler
    void exit();                        // mark as finished (could be called from wrapper)
    static void wrapper();              // static function - entry which calls body(arg) and exit

    ThreadState getState() const { return state; }
    void setState(ThreadState s) { state = s; }

    static void yield();
    static void dispatch();

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

    void* operator new[](size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    }

    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    struct Context {
        size_t ra;
        size_t sp;
    };

    int id;
    void* stack;
    size_t stackSize;
    Context context;
    Body body;
    void* args;

    ThreadState state;
    Thread* next;

    void allocateStack(size_t bytes);   // Helper: make byte size in blocks and allocate
    static void contextSwitch(Context* oldContext, Context* newContext);
    static void initContext(Context* context, void (*entry)(), void* stackTop);
};

#endif //PROJECT_BASE_THREAD_HPP