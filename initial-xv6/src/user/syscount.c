#include "kernel/types.h"
#include "user/user.h"

int main(int argc, char *argv[])
{
    if (argc < 3)
    {
        fprintf(2, "Usage: syscount <mask> command [args]\n");
        exit(1);
    }
    char *arr[26] = {"", "fork", "exit", "wait", "pipe", "read", "kill", "exec", "fstat", "chdir", "dup", "getpid", "sbrk", "sleep", "uptime", "open", "write", "mknod", "unlink", "link", "mkdir", "close", "waitx", "getSysCount", "sigalarm", "sigreturn"};
    int mask = atoi(argv[1]);
    getSysCount(mask);
    int pid = fork();

    if (pid < 0)
    {
        fprintf(2, "fork failed\n");
        exit(1);
    }
    if (pid == 0)
    {
        // Child process: execute the command
        exec(argv[2], &argv[2]);
        fprintf(2, "exec %s failed\n", argv[2]);
        exit(1);
    }
    else
    {

        wait(0);
        int count = getSysCount(mask);
        // int cnt = 0;
        int i;
        for (i = 0; i < 31; i++)
        {
            if (mask & (1 << i))
            {
                // cnt ++;
                break;
            }
        }
        if (i == 7)
            count -= 2;
        else 
        if (i == 1 || i == 3)
            count--;
        printf("PID %d called %s %d times.\n", pid, arr[i], count);
    }
    exit(0);
}
