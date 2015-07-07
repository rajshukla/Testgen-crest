# 1 "./prime.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./prime.cil.c"
# 36 "prime.c"
void __globinit_prime(void) ;
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
# 9 "prime.c"
int _divides(int n , int m ) ;
# 10 "prime.c"
int even(int n ) ;
# 11 "prime.c"
int prime(int n ) ;
# 12 "prime.c"
void swap(int *a , int *b ) ;
# 13 "prime.c"
int _divides(int n , int m )
{
  int __retres3 ;

  {
  __CrestCall(3, 1);
  __CrestStore(2, (unsigned long )(& m));
  __CrestStore(1, (unsigned long )(& n));
  __CrestLoad(8, (unsigned long )(& m), (long long )m);
  __CrestLoad(7, (unsigned long )(& n), (long long )n);
  __CrestApply2(6, 4, (long long )(m % n));
  __CrestLoad(5, (unsigned long )0, (long long )0);
  __CrestApply2(4, 12, (long long )(m % n == 0));
  __CrestStore(9, (unsigned long )(& __retres3));
# 14 "prime.c"
  __retres3 = m % n == 0;
  {
  __CrestLoad(10, (unsigned long )(& __retres3), (long long )__retres3);
  __CrestReturn(11);
# 13 "prime.c"
  return (__retres3);
  }
}
}
# 16 "prime.c"
int even(int n )
{
  int tmp ;

  {
  __CrestCall(13, 2);
  __CrestStore(12, (unsigned long )(& n));
  __CrestLoad(14, (unsigned long )0, (long long )2);
  __CrestLoad(15, (unsigned long )(& n), (long long )n);
# 17 "prime.c"
  tmp = _divides(2, n);
  __CrestHandleReturn(17, (long long )tmp);
  __CrestStore(16, (unsigned long )(& tmp));
  {
  __CrestLoad(18, (unsigned long )(& tmp), (long long )tmp);
  __CrestReturn(19);
# 17 "prime.c"
  return (tmp);
  }
}
}
# 19 "prime.c"
int prime(int n )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  int __retres5 ;

  {
  __CrestCall(21, 3);
  __CrestStore(20, (unsigned long )(& n));
# 21 "prime.c"
  __CrestInt(& n);
  __CrestLoad(22, (unsigned long )(& n), (long long )n);
# 23 "prime.c"
  tmp = even(n);
  __CrestHandleReturn(24, (long long )tmp);
  __CrestStore(23, (unsigned long )(& tmp));
  {
  __CrestLoad(27, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(26, (unsigned long )0, (long long )0);
  __CrestApply2(25, 13, (long long )(tmp != 0));
# 23 "prime.c"
  if (tmp != 0) {
    __CrestBranch(28, 7, 1);
    __CrestLoad(32, (unsigned long )(& n), (long long )n);
    __CrestLoad(31, (unsigned long )0, (long long )2);
    __CrestApply2(30, 12, (long long )(n == 2));
    __CrestStore(33, (unsigned long )(& __retres5));
# 24 "prime.c"
    __retres5 = n == 2;
# 24 "prime.c"
    goto return_label;
  } else {
    __CrestBranch(29, 9, 0);

  }
  }
  __CrestLoad(34, (unsigned long )0, (long long )3);
  __CrestStore(35, (unsigned long )(& i));
# 25 "prime.c"
  i = 3;
  {
  {
  __CrestLoad(40, (unsigned long )(& i), (long long )i);
  __CrestLoad(39, (unsigned long )(& i), (long long )i);
  __CrestApply2(38, 2, (long long )(i * i));
  __CrestLoad(37, (unsigned long )(& n), (long long )n);
  __CrestApply2(36, 15, (long long )(i * i <= n));
  if (i * i <= n) {
    __CrestBranch(41, 13, 1);
    __CrestLoad(43, (unsigned long )(& i), (long long )i);
    __CrestLoad(44, (unsigned long )(& n), (long long )n);
    tmp___0 = _divides(i, n);
    __CrestHandleReturn(46, (long long )tmp___0);
    __CrestStore(45, (unsigned long )(& tmp___0));
    {
    __CrestLoad(49, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestLoad(48, (unsigned long )0, (long long )0);
    __CrestApply2(47, 13, (long long )(tmp___0 != 0));
    if (tmp___0 != 0) {
      __CrestBranch(50, 15, 1);
      __CrestLoad(52, (unsigned long )0, (long long )0);
      __CrestStore(53, (unsigned long )(& __retres5));
      __retres5 = 0;
      goto return_label;
    } else {
      __CrestBranch(51, 17, 0);

    }
    }
    __CrestLoad(56, (unsigned long )(& i), (long long )i);
    __CrestLoad(55, (unsigned long )0, (long long )2);
    __CrestApply2(54, 0, (long long )(i + 2));
    __CrestStore(57, (unsigned long )(& i));
    i += 2;
  } else {
    __CrestBranch(42, 19, 0);

  }
  }
  {
  __CrestLoad(62, (unsigned long )(& i), (long long )i);
  __CrestLoad(61, (unsigned long )(& i), (long long )i);
  __CrestApply2(60, 2, (long long )(i * i));
  __CrestLoad(59, (unsigned long )(& n), (long long )n);
  __CrestApply2(58, 15, (long long )(i * i <= n));
  if (i * i <= n) {
    __CrestBranch(63, 21, 1);
    __CrestLoad(65, (unsigned long )(& i), (long long )i);
    __CrestLoad(66, (unsigned long )(& n), (long long )n);
    tmp___0 = _divides(i, n);
    __CrestHandleReturn(68, (long long )tmp___0);
    __CrestStore(67, (unsigned long )(& tmp___0));
    {
    __CrestLoad(71, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestLoad(70, (unsigned long )0, (long long )0);
    __CrestApply2(69, 13, (long long )(tmp___0 != 0));
    if (tmp___0 != 0) {
      __CrestBranch(72, 23, 1);
      __CrestLoad(74, (unsigned long )0, (long long )0);
      __CrestStore(75, (unsigned long )(& __retres5));
      __retres5 = 0;
      goto return_label;
    } else {
      __CrestBranch(73, 25, 0);

    }
    }
    __CrestLoad(78, (unsigned long )(& i), (long long )i);
    __CrestLoad(77, (unsigned long )0, (long long )2);
    __CrestApply2(76, 0, (long long )(i + 2));
    __CrestStore(79, (unsigned long )(& i));
    i += 2;
  } else {
    __CrestBranch(64, 27, 0);

  }
  }
  }
  __CrestLoad(82, (unsigned long )(& n), (long long )n);
  __CrestLoad(81, (unsigned long )0, (long long )1);
  __CrestApply2(80, 14, (long long )(n > 1));
  __CrestStore(83, (unsigned long )(& __retres5));
# 29 "prime.c"
  __retres5 = n > 1;
  return_label:
  {
  __CrestLoad(84, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(85);
# 19 "prime.c"
  return (__retres5);
  }
}
}
# 31 "prime.c"
void swap(int *a , int *b )
{
  int tmp ;

  {
  __CrestCall(86, 4);

  __CrestLoad(87, (unsigned long )a, (long long )*a);
  __CrestStore(88, (unsigned long )(& tmp));
# 32 "prime.c"
  tmp = *a;
  __CrestLoad(89, (unsigned long )b, (long long )*b);
  __CrestStore(90, (unsigned long )a);
# 33 "prime.c"
  *a = *b;
  __CrestLoad(91, (unsigned long )(& tmp), (long long )tmp);
  __CrestStore(92, (unsigned long )b);
# 34 "prime.c"
  *b = tmp;

  {
  __CrestReturn(93);
# 31 "prime.c"
  return;
  }
}
}
# 36 "prime.c"
int main(void)
{
  int x ;
  int y ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;

  {
  __globinit_prime();
  __CrestCall(94, 5);
  __CrestLoad(95, (unsigned long )0, (long long )21649);
  __CrestStore(96, (unsigned long )(& x));
# 37 "prime.c"
  x = 21649;
  __CrestLoad(97, (unsigned long )0, (long long )513239);
  __CrestStore(98, (unsigned long )(& y));
# 38 "prime.c"
  y = 513239;
# 39 "prime.c"
  swap(& x, & y);
  __CrestClearStack(99);
  __CrestLoad(100, (unsigned long )(& x), (long long )x);
# 40 "prime.c"
  tmp = prime(x);
  __CrestHandleReturn(102, (long long )tmp);
  __CrestStore(101, (unsigned long )(& tmp));
  __CrestLoad(105, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(104, (unsigned long )0, (long long )0);
  __CrestApply2(103, 13, (long long )(tmp != 0));
# 40 "prime.c"
  if (tmp != 0) {
    __CrestBranch(106, 35, 1);
    __CrestLoad(108, (unsigned long )(& y), (long long )y);
# 40 "prime.c"
    tmp___0 = prime(y);
    __CrestHandleReturn(110, (long long )tmp___0);
    __CrestStore(109, (unsigned long )(& tmp___0));
    {
    __CrestLoad(113, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestLoad(112, (unsigned long )0, (long long )0);
    __CrestApply2(111, 13, (long long )(tmp___0 != 0));
# 40 "prime.c"
    if (tmp___0 != 0) {
      __CrestBranch(114, 37, 1);
      __CrestLoad(116, (unsigned long )0, (long long )0);
      __CrestStore(117, (unsigned long )(& tmp___1));
# 40 "prime.c"
      tmp___1 = 0;
    } else {
      __CrestBranch(115, 38, 0);
      __CrestLoad(118, (unsigned long )0, (long long )1);
      __CrestStore(119, (unsigned long )(& tmp___1));
# 40 "prime.c"
      tmp___1 = 1;
    }
    }
  } else {
    __CrestBranch(107, 39, 0);
    __CrestLoad(120, (unsigned long )0, (long long )1);
    __CrestStore(121, (unsigned long )(& tmp___1));
# 40 "prime.c"
    tmp___1 = 1;
  }
  __CrestLoad(122, (unsigned long )(& tmp___1), (long long )tmp___1);
  __CrestReturn(123);
# 40 "prime.c"
  return (tmp___1);
}
}
void __globinit_prime(void)
{


  {
  __CrestInit();
}
}