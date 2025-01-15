#include "kernel/param.h"
#include "kernel/types.h"
#include "kernel/stat.h"
#include "kernel/riscv.h"
#include "user/user.h"
#pragma GCC push_options
#pragma GCC optimize ("O0") // Causing wierd errors of moving things here and there

void cpu_bound_job() {
    int i, j;
    volatile int x = 0;
    for (i = 0; i < 50000; i++) {
        for (j = 0; j < 50000; j++) {
            x = x + i * j;  // Simple computation to simulate CPU work
        }
    }
    // printf("CPU-bound job finished\n");
}

void io_bound_job() {
    int i;
    for (i = 0; i < 5; i++) {
        // printf("I/O-bound job iteration %d\n", i);
        sleep(100);  // Simulate I/O-bound work
    }
    // printf("I/O-bound jobß finished\n");
}

int main(void) {
    int pid;

    // Spawn CPU-bound jobs
    for (int i = 0; i < 3; i++) {
        pid = fork();
        if (pid == 0) {
            cpu_bound_job();
            exit(0);
        }
    }

    // Spawn I/O-bound jobs
    for (int i = 0; i < 2; i++) {
        pid = fork();
        if (pid == 0) {
            io_bound_job();
            exit(0);
        }
    }

    // Wait for all child processes to complete
    while (wait(0) != -1);

    printf("All jobs finished\n");
    exit(0);
}