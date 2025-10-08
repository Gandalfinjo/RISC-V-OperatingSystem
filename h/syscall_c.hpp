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

#endif //PROJECT_BASE_SYSCALL_C_HPP