// In user/alarmtest.c
#include "kernel/types.h"
#include "user.h"
#include "kernel/fcntl.h"

void handler() {

  printf("ALARM!!\n");
  sigreturn();

}


int
main(int argc, char *argv[])
{
  sigalarm(10, handler);

  for (int i = 0; i < 50*500000; i++) {
    if ((i % 500000) == 0)
      printf(".");
  }
  sigalarm(0,0);
  exit(0);
}
