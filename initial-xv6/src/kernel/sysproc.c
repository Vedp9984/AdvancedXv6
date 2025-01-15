#include "types.h"
#include "riscv.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "spinlock.h"
#include "proc.h"
#include "memlayout.h"
#include "syscall.h"
#include "header.h"

uint64
sys_exit(void)
{
  int n;
  argint(0, &n);
  exit(n);
  return 0; // not reached
}

uint64
sys_getpid(void)
{
  return myproc()->pid;
}

uint64
sys_fork(void)
{
  return fork();
}

uint64
sys_wait(void)
{
  uint64 p;
  argaddr(0, &p);
  return wait(p);
}

uint64
sys_sbrk(void)
{
  uint64 addr;
  int n;

  argint(0, &n);
  addr = myproc()->sz;
  if (growproc(n) < 0)
    return -1;
  return addr;
}

uint64
sys_sleep(void)
{
  int n;
  uint ticks0;

  argint(0, &n);
  acquire(&tickslock);
  ticks0 = ticks;
  while (ticks - ticks0 < n)
  {
    if (killed(myproc()))
    {
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

uint64
sys_kill(void)
{
  int pid;

  argint(0, &pid);
  return kill(pid);
}

// return how many clock tick interrupts have occurred
// since start.
uint64
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

uint64

sys_waitx(void)
{
  uint64 addr, addr1, addr2;
  uint wtime, rtime;
  argaddr(0, &addr);
  argaddr(1, &addr1); // user virtual memory
  argaddr(2, &addr2);
  int ret = waitx(addr, &wtime, &rtime);
  struct proc *p = myproc();
  if (copyout(p->pagetable, addr1, (char *)&wtime, sizeof(int)) < 0)
    return -1;
  if (copyout(p->pagetable, addr2, (char *)&rtime, sizeof(int)) < 0)
    return -1;
  return ret;
}

uint64
sys_getSysCount(void)
{
  int mask;
  argint(0, &mask);
  return getSysCount(mask);
}

uint64
sys_sigalarm(void)
{
  int interval;
  uint64 handler;
  struct proc *process = myproc();

  argint(0, &interval);
  argaddr(1, &handler);
  process->alarm_handler = (void (*)())handler;
  process->alarm_interval = interval;
  process->alarm_last_triggered = ticks;

  if (process->alarm_tf == 0)
    process->alarm_tf = kalloc();
    
  return 0;
}

uint64
sys_sigreturn(void)
{
  struct proc *process = myproc();

  if (process->alarm_tf == 0)
    return -1;

  memmove(process->trapframe, process->alarm_tf, sizeof(struct trapframe));
  process->in_alarm_handler = 0;
   usertrapret();
  return 0;
}



uint64
sys_settickets(void)
{
  int n;
  argint(0, &n);

  if (n < 1)
    return -1;

  struct proc *p = myproc();
  p->tickets = n;
  return 0;
}
