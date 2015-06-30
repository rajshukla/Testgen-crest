# 1 "./concrete_return.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./concrete_return.cil.c"
# 15 "concrete_return.c"
void __globinit_concrete_return(void) ;
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
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 15 "concrete_return.c"
int main(void)
{
  int x ;
  int __retres2 ;

  {
  __globinit_concrete_return();
  __CrestCall(1, 1);
# 17 "concrete_return.c"
  __CrestInt(& x);
# 18 "concrete_return.c"
  x = printf((char const * __restrict )"Hello.\n");
  __CrestHandleReturn(3, (long long )x);
  __CrestStore(2, (unsigned long )(& x));
  __CrestLoad(6, (unsigned long )(& x), (long long )x);
  __CrestLoad(5, (unsigned long )0, (long long )3);
  __CrestApply2(4, 12, (long long )(x == 3));
# 19 "concrete_return.c"
  if (x == 3) {
    __CrestBranch(7, 3, 1);
    __CrestLoad(9, (unsigned long )0, (long long )1);
    __CrestStore(10, (unsigned long )(& __retres2));
# 20 "concrete_return.c"
    __retres2 = 1;
# 20 "concrete_return.c"
    goto return_label;
  } else {
    __CrestBranch(8, 5, 0);

  }
  __CrestLoad(11, (unsigned long )0, (long long )0);
  __CrestStore(12, (unsigned long )(& __retres2));
# 21 "concrete_return.c"
  __retres2 = 0;
  return_label:
  {
  __CrestLoad(13, (unsigned long )(& __retres2), (long long )__retres2);
  __CrestReturn(14);
# 15 "concrete_return.c"
  return (__retres2);
  }
}
}
void __globinit_concrete_return(void)
{


  {
  __CrestInit();
}
}
