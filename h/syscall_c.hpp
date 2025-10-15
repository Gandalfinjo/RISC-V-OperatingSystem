//
// Created by os on 10/7/25.
//

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"

void* mem_alloc(size_t);
int mem_free(void*);
size_t mem_get_free_space();
size_t mem_get_largest_free_block();

class Thread;
typedef Thread* thread_t;
int thread_create(thread_t*, void(*)(void*), void*);
int thread_exit();
void thread_dispatch();

class Semaphore;
typedef Semaphore* sem_t;
int sem_open(sem_t*, unsigned);
int sem_close(sem_t);
int sem_wait(sem_t);
int sem_signal(sem_t);

#endif //PROJECT_BASE_SYSCALL_C_HPP