//
// Created by os on 10/8/25.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

class Thread;

class Scheduler {
public:
    static Thread* get();
    static void put(Thread*);
    static bool isEmpty();
private:
    static Thread* head;
    static Thread* tail;
};

#endif //PROJECT_BASE_SCHEDULER_HPP