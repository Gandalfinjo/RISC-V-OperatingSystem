//
// Created by os on 10/8/25.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

class KThread;

class Scheduler {
public:
    static KThread* get();
    static void put(KThread*);
    static bool isEmpty();
private:
    static KThread* head;
    static KThread* tail;
};

#endif //PROJECT_BASE_SCHEDULER_HPP