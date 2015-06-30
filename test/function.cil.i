# 1 "./function.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./function.cil.c"
# 19 "function.c"
void __globinit_function(void) ;
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
# 201 "../bin/../include/crest.h"
extern void __CrestShort(short *x ) __attribute__((__crest_skip__)) ;
# 15 "function.c"
short dbl(short x )
{
  short __retres2 ;

  {
  __CrestCall(2, 1);
  __CrestStore(1, (unsigned long )(& x));
  __CrestLoad(5, (unsigned long )0, (long long )2);
  __CrestLoad(4, (unsigned long )(& x), (long long )x);
  __CrestApply2(3, 2, (long long )(2 * (int )x));
  __CrestStore(6, (unsigned long )(& __retres2));
# 16 "function.c"
  __retres2 = (short )(2 * (int )x);
  {
  __CrestLoad(7, (unsigned long )(& __retres2), (long long )__retres2);
  __CrestReturn(8);
# 15 "function.c"
  return (__retres2);
  }
}
}
# 19 "function.c"
int main(void)
{
  short a ;
  short tmp ;
  int __retres3 ;

  {
  __globinit_function();
  __CrestCall(9, 2);
# 21 "function.c"
  __CrestShort(& a);
  __CrestLoad(10, (unsigned long )(& a), (long long )a);
# 22 "function.c"
  tmp = dbl(a);
  __CrestHandleReturn(12, (long long )tmp);
  __CrestStore(11, (unsigned long )(& tmp));
  __CrestLoad(17, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(16, (unsigned long )0, (long long )3);
  __CrestApply2(15, 0, (long long )((int )tmp + 3));
  __CrestLoad(14, (unsigned long )0, (long long )9);
  __CrestApply2(13, 12, (long long )((int )tmp + 3 == 9));
# 22 "function.c"
  if ((int )tmp + 3 == 9) {
    __CrestBranch(18, 5, 1);
    __CrestLoad(20, (unsigned long )0, (long long )0);
    __CrestStore(21, (unsigned long )(& __retres3));
# 23 "function.c"
    __retres3 = 0;
# 23 "function.c"
    goto return_label;
  } else {
    __CrestBranch(19, 7, 0);
    __CrestLoad(22, (unsigned long )0, (long long )1);
    __CrestStore(23, (unsigned long )(& __retres3));
# 25 "function.c"
    __retres3 = 1;
# 25 "function.c"
    goto return_label;
  }
  return_label:
  {
  __CrestLoad(24, (unsigned long )(& __retres3), (long long )__retres3);
  __CrestReturn(25);
# 19 "function.c"
  return (__retres3);
  }
}
}
void __globinit_function(void)
{


  {
  __CrestInit();
}
}
