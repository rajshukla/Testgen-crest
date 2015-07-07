# 1 "./faculty.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./faculty.cil.c"
# 14 "faculty.c"
void __globinit_faculty(void) ;
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
# 7 "faculty.c"
int fac(int n )
{
  int tmp ;
  int __retres3 ;

  {
  __CrestCall(2, 1);
  __CrestStore(1, (unsigned long )(& n));
  {
  __CrestLoad(5, (unsigned long )(& n), (long long )n);
  __CrestLoad(4, (unsigned long )0, (long long )0);
  __CrestApply2(3, 12, (long long )(n == 0));
# 9 "faculty.c"
  if (n == 0) {
    __CrestBranch(6, 2, 1);
    __CrestLoad(8, (unsigned long )0, (long long )1);
    __CrestStore(9, (unsigned long )(& __retres3));
# 10 "faculty.c"
    __retres3 = 1;
# 10 "faculty.c"
    goto return_label;
  } else {
    __CrestBranch(7, 4, 0);
    __CrestLoad(12, (unsigned long )(& n), (long long )n);
    __CrestLoad(11, (unsigned long )0, (long long )1);
    __CrestApply2(10, 1, (long long )(n - 1));
# 12 "faculty.c"
    tmp = fac(n - 1);
    __CrestHandleReturn(14, (long long )tmp);
    __CrestStore(13, (unsigned long )(& tmp));
    __CrestLoad(17, (unsigned long )(& n), (long long )n);
    __CrestLoad(16, (unsigned long )(& tmp), (long long )tmp);
    __CrestApply2(15, 0, (long long )(n + tmp));
    __CrestStore(18, (unsigned long )(& __retres3));
# 12 "faculty.c"
    __retres3 = n + tmp;
# 12 "faculty.c"
    goto return_label;
  }
  }
  return_label:
  {
  __CrestLoad(19, (unsigned long )(& __retres3), (long long )__retres3);
  __CrestReturn(20);
# 7 "faculty.c"
  return (__retres3);
  }
}
}
# 14 "faculty.c"
int main(void)
{
  int i ;
  int s ;
  int n ;
  int tmp ;

  {
  __globinit_faculty();
  __CrestCall(21, 2);
# 17 "faculty.c"
  __CrestInt(& i);
  __CrestLoad(22, (unsigned long )0, (long long )0);
  __CrestStore(23, (unsigned long )(& s));
# 18 "faculty.c"
  s = 0;
  __CrestLoad(24, (unsigned long )0, (long long )5);
  __CrestStore(25, (unsigned long )(& n));
# 20 "faculty.c"
  n = 5;
  __CrestLoad(26, (unsigned long )(& i), (long long )i);
# 21 "faculty.c"
  i = fac(i);
  __CrestHandleReturn(28, (long long )i);
  __CrestStore(27, (unsigned long )(& i));
  __CrestLoad(31, (unsigned long )(& i), (long long )i);
  __CrestLoad(30, (unsigned long )(& n), (long long )n);
  __CrestApply2(29, 15, (long long )(i <= n));
  if (i <= n) {
    __CrestBranch(32, 11, 1);
    __CrestLoad(34, (unsigned long )(& i), (long long )i);
    tmp = fac(i);
    __CrestHandleReturn(36, (long long )tmp);
    __CrestStore(35, (unsigned long )(& tmp));
    __CrestLoad(39, (unsigned long )(& s), (long long )s);
    __CrestLoad(38, (unsigned long )(& tmp), (long long )tmp);
    __CrestApply2(37, 0, (long long )(s + tmp));
    __CrestStore(40, (unsigned long )(& s));
    s += tmp;
    __CrestLoad(43, (unsigned long )(& i), (long long )i);
    __CrestLoad(42, (unsigned long )0, (long long )1);
    __CrestApply2(41, 0, (long long )(i + 1));
    __CrestStore(44, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(33, 12, 0);

  }
  __CrestLoad(47, (unsigned long )(& i), (long long )i);
  __CrestLoad(46, (unsigned long )(& n), (long long )n);
  __CrestApply2(45, 15, (long long )(i <= n));
  if (i <= n) {
    __CrestBranch(48, 14, 1);
    __CrestLoad(50, (unsigned long )(& i), (long long )i);
    tmp = fac(i);
    __CrestHandleReturn(52, (long long )tmp);
    __CrestStore(51, (unsigned long )(& tmp));
    __CrestLoad(55, (unsigned long )(& s), (long long )s);
    __CrestLoad(54, (unsigned long )(& tmp), (long long )tmp);
    __CrestApply2(53, 0, (long long )(s + tmp));
    __CrestStore(56, (unsigned long )(& s));
    s += tmp;
    __CrestLoad(59, (unsigned long )(& i), (long long )i);
    __CrestLoad(58, (unsigned long )0, (long long )1);
    __CrestApply2(57, 0, (long long )(i + 1));
    __CrestStore(60, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(49, 15, 0);

  }
  __CrestLoad(61, (unsigned long )(& s), (long long )s);
  __CrestReturn(62);
# 23 "faculty.c"
  return (s);
}
}
void __globinit_faculty(void)
{


  {
  __CrestInit();
}
}
