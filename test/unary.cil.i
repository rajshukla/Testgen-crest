# 1 "./unary.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./unary.cil.c"
# 15 "unary.c"
void __globinit_unary(void) ;
extern void __CrestInit(void) __attribute__((__crest_skip__)) ;
extern void __CrestHandleReturn(int id , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestReturn(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestCall(int id , unsigned int fid ) __attribute__((__crest_skip__)) ;
extern void __CrestBranch(int id , int bid , unsigned char b ) __attribute__((__crest_skip__)) ;
extern void __CrestApply2(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestClearStack(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestStore(int id , unsigned long addr ) __attribute__((__crest_skip__)) ;
extern void __CrestLoad(int id , unsigned long addr , long long val ) __attribute__((__crest_skip__)) ;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 15 "unary.c"
int main(void)
{
  int x ;
  int a ;
  int b ;
  int __retres4 ;

  {
  __globinit_unary();
  __CrestCall(1, 1);
  __CrestLoad(2, (unsigned long )0, (long long )2);
  __CrestStore(3, (unsigned long )(& x));
# 16 "unary.c"
  x = 2;
# 18 "unary.c"
  __CrestInt(& a);
  __CrestLoad(5, (unsigned long )(& a), (long long )a);
  __CrestApply1(4, 19, (long long )(- a));
  __CrestStore(6, (unsigned long )(& b));
# 19 "unary.c"
  b = - a;
  __CrestLoad(12, (unsigned long )(& x), (long long )x);
  __CrestApply1(11, 19, (long long )(- x));
  __CrestLoad(10, (unsigned long )(& a), (long long )a);
  __CrestApply2(9, 2, (long long )(- x * a));
  __CrestLoad(8, (unsigned long )0, (long long )8);
  __CrestApply2(7, 12, (long long )(- x * a == 8));
# 20 "unary.c"
  if (- x * a == 8) {
    __CrestBranch(13, 3, 1);
    __CrestLoad(15, (unsigned long )(& a), (long long )a);
    __CrestLoad(16, (unsigned long )(& b), (long long )b);
# 21 "unary.c"
    printf((char const * __restrict )"8 (%d %d)\n", a, b);
    __CrestClearStack(17);
  } else {
    __CrestBranch(14, 4, 0);
    __CrestLoad(18, (unsigned long )(& a), (long long )a);
    __CrestLoad(19, (unsigned long )(& b), (long long )b);
# 23 "unary.c"
    printf((char const * __restrict )"not 8 (%d %d)\n", a, b);
    __CrestClearStack(20);
  }
  __CrestLoad(21, (unsigned long )0, (long long )0);
  __CrestStore(22, (unsigned long )(& __retres4));
# 25 "unary.c"
  __retres4 = 0;
  __CrestLoad(23, (unsigned long )(& __retres4), (long long )__retres4);
  __CrestReturn(24);
# 15 "unary.c"
  return (__retres4);
}
}
void __globinit_unary(void)
{


  {
  __CrestInit();
}
}
