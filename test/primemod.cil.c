/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is true */

#line 40 "primemod.c"
void __globinit_primemod(void) ;
extern void __CrestInit(void)  __attribute__((__crest_skip__)) ;
extern void __CrestHandleReturn(int id , long long val )  __attribute__((__crest_skip__)) ;
extern void __CrestReturn(int id )  __attribute__((__crest_skip__)) ;
extern void __CrestCall(int id , unsigned int fid )  __attribute__((__crest_skip__)) ;
extern void __CrestBranch(int id , int bid , unsigned char b )  __attribute__((__crest_skip__)) ;
extern void __CrestApply2(int id , int op , long long val )  __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val )  __attribute__((__crest_skip__)) ;
extern void __CrestClearStack(int id )  __attribute__((__crest_skip__)) ;
extern void __CrestStore(int id , unsigned long addr )  __attribute__((__crest_skip__)) ;
extern void __CrestLoad(int id , unsigned long addr , long long val )  __attribute__((__crest_skip__)) ;
#line 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x )  __attribute__((__crest_skip__)) ;
#line 10 "primemod.c"
int _divides(int n , int m ) ;
#line 11
int even(int n ) ;
#line 12
int prime(int n ) ;
#line 13
void swap(int *a , int *b ) ;
#line 14 "primemod.c"
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
#line 15
  __retres3 = m % n == 0;
  {
  __CrestLoad(10, (unsigned long )(& __retres3), (long long )__retres3);
  __CrestReturn(11);
#line 14
  return (__retres3);
  }
}
}
#line 17 "primemod.c"
int even(int n ) 
{ 
  int tmp ;

  {
  __CrestCall(13, 2);
  __CrestStore(12, (unsigned long )(& n));
  __CrestLoad(14, (unsigned long )0, (long long )2);
  __CrestLoad(15, (unsigned long )(& n), (long long )n);
#line 18
  tmp = _divides(2, n);
  __CrestHandleReturn(17, (long long )tmp);
  __CrestStore(16, (unsigned long )(& tmp));
  {
  __CrestLoad(18, (unsigned long )(& tmp), (long long )tmp);
  __CrestReturn(19);
#line 18
  return (tmp);
  }
}
}
#line 20 "primemod.c"
int prime(int n ) 
{ 
  int i ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int __retres6 ;

  {
  __CrestCall(21, 3);
  __CrestStore(20, (unsigned long )(& n));
#line 22
  __CrestInt(& n);
  __CrestLoad(22, (unsigned long )(& n), (long long )n);
#line 24
  tmp___0 = even(n);
  __CrestHandleReturn(24, (long long )tmp___0);
  __CrestStore(23, (unsigned long )(& tmp___0));
  {
  __CrestLoad(27, (unsigned long )(& tmp___0), (long long )tmp___0);
  __CrestLoad(26, (unsigned long )0, (long long )0);
  __CrestApply2(25, 13, (long long )(tmp___0 != 0));
#line 24
  if (tmp___0 != 0) {
    __CrestBranch(28, 7, 1);
    __CrestLoad(32, (unsigned long )(& n), (long long )n);
    __CrestLoad(31, (unsigned long )0, (long long )2);
    __CrestApply2(30, 12, (long long )(n == 2));
    __CrestStore(33, (unsigned long )(& ret));
#line 25
    ret = n == 2;
  } else {
    __CrestBranch(29, 8, 0);
    __CrestLoad(34, (unsigned long )0, (long long )3);
    __CrestStore(35, (unsigned long )(& i));
#line 27
    i = 3;
    {
    {
    __CrestLoad(40, (unsigned long )(& i), (long long )i);
    __CrestLoad(39, (unsigned long )(& i), (long long )i);
    __CrestApply2(38, 2, (long long )(i * i));
    __CrestLoad(37, (unsigned long )(& n), (long long )n);
    __CrestApply2(36, 15, (long long )(i * i <= n));
    if (i * i <= n) {
      __CrestBranch(41, 11, 1);
      __CrestLoad(43, (unsigned long )(& i), (long long )i);
      __CrestLoad(44, (unsigned long )(& n), (long long )n);
      tmp = _divides(i, n);
      __CrestHandleReturn(46, (long long )tmp);
      __CrestStore(45, (unsigned long )(& tmp));
      {
      __CrestLoad(49, (unsigned long )(& tmp), (long long )tmp);
      __CrestLoad(48, (unsigned long )0, (long long )0);
      __CrestApply2(47, 13, (long long )(tmp != 0));
      if (tmp != 0) {
        __CrestBranch(50, 13, 1);
        __CrestLoad(52, (unsigned long )0, (long long )0);
        __CrestStore(53, (unsigned long )(& __retres6));
        __retres6 = 0;
        goto return_label;
      } else {
        __CrestBranch(51, 15, 0);

      }
      }
      __CrestLoad(56, (unsigned long )(& i), (long long )i);
      __CrestLoad(55, (unsigned long )0, (long long )2);
      __CrestApply2(54, 0, (long long )(i + 2));
      __CrestStore(57, (unsigned long )(& i));
      i += 2;
    } else {
      __CrestBranch(42, 17, 0);

    }
    }
    {
    __CrestLoad(62, (unsigned long )(& i), (long long )i);
    __CrestLoad(61, (unsigned long )(& i), (long long )i);
    __CrestApply2(60, 2, (long long )(i * i));
    __CrestLoad(59, (unsigned long )(& n), (long long )n);
    __CrestApply2(58, 15, (long long )(i * i <= n));
    if (i * i <= n) {
      __CrestBranch(63, 19, 1);
      __CrestLoad(65, (unsigned long )(& i), (long long )i);
      __CrestLoad(66, (unsigned long )(& n), (long long )n);
      tmp = _divides(i, n);
      __CrestHandleReturn(68, (long long )tmp);
      __CrestStore(67, (unsigned long )(& tmp));
      {
      __CrestLoad(71, (unsigned long )(& tmp), (long long )tmp);
      __CrestLoad(70, (unsigned long )0, (long long )0);
      __CrestApply2(69, 13, (long long )(tmp != 0));
      if (tmp != 0) {
        __CrestBranch(72, 21, 1);
        __CrestLoad(74, (unsigned long )0, (long long )0);
        __CrestStore(75, (unsigned long )(& __retres6));
        __retres6 = 0;
        goto return_label;
      } else {
        __CrestBranch(73, 23, 0);

      }
      }
      __CrestLoad(78, (unsigned long )(& i), (long long )i);
      __CrestLoad(77, (unsigned long )0, (long long )2);
      __CrestApply2(76, 0, (long long )(i + 2));
      __CrestStore(79, (unsigned long )(& i));
      i += 2;
    } else {
      __CrestBranch(64, 25, 0);

    }
    }
    }
    __CrestLoad(82, (unsigned long )(& n), (long long )n);
    __CrestLoad(81, (unsigned long )0, (long long )1);
    __CrestApply2(80, 14, (long long )(n > 1));
    __CrestStore(83, (unsigned long )(& __retres6));
#line 31
    __retres6 = n > 1;
#line 31
    goto return_label;
  }
  }
  __CrestLoad(84, (unsigned long )(& ret), (long long )ret);
  __CrestStore(85, (unsigned long )(& __retres6));
#line 33
  __retres6 = ret;
  return_label: /* CIL Label */ 
  {
  __CrestLoad(86, (unsigned long )(& __retres6), (long long )__retres6);
  __CrestReturn(87);
#line 20
  return (__retres6);
  }
}
}
#line 35 "primemod.c"
void swap(int *a , int *b ) 
{ 
  int tmp ;

  {
  __CrestCall(88, 4);

  __CrestLoad(89, (unsigned long )a, (long long )*a);
  __CrestStore(90, (unsigned long )(& tmp));
#line 36
  tmp = *a;
  __CrestLoad(91, (unsigned long )b, (long long )*b);
  __CrestStore(92, (unsigned long )a);
#line 37
  *a = *b;
  __CrestLoad(93, (unsigned long )(& tmp), (long long )tmp);
  __CrestStore(94, (unsigned long )b);
#line 38
  *b = tmp;

  {
  __CrestReturn(95);
#line 35
  return;
  }
}
}
#line 40 "primemod.c"
int main(void) 
{ 
  int x ;
  int y ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;

  {
  __globinit_primemod();
  __CrestCall(96, 5);
  __CrestLoad(97, (unsigned long )0, (long long )21649);
  __CrestStore(98, (unsigned long )(& x));
#line 41
  x = 21649;
  __CrestLoad(99, (unsigned long )0, (long long )513239);
  __CrestStore(100, (unsigned long )(& y));
#line 42
  y = 513239;
#line 43
  swap(& x, & y);
  __CrestClearStack(101);
  __CrestLoad(102, (unsigned long )(& x), (long long )x);
#line 44
  tmp = prime(x);
  __CrestHandleReturn(104, (long long )tmp);
  __CrestStore(103, (unsigned long )(& tmp));
  __CrestLoad(107, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(106, (unsigned long )0, (long long )0);
  __CrestApply2(105, 13, (long long )(tmp != 0));
#line 44
  if (tmp != 0) {
    __CrestBranch(108, 35, 1);
    __CrestLoad(110, (unsigned long )(& y), (long long )y);
#line 44
    tmp___0 = prime(y);
    __CrestHandleReturn(112, (long long )tmp___0);
    __CrestStore(111, (unsigned long )(& tmp___0));
    {
    __CrestLoad(115, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestLoad(114, (unsigned long )0, (long long )0);
    __CrestApply2(113, 13, (long long )(tmp___0 != 0));
#line 44
    if (tmp___0 != 0) {
      __CrestBranch(116, 37, 1);
      __CrestLoad(118, (unsigned long )0, (long long )0);
      __CrestStore(119, (unsigned long )(& tmp___1));
#line 44
      tmp___1 = 0;
    } else {
      __CrestBranch(117, 38, 0);
      __CrestLoad(120, (unsigned long )0, (long long )1);
      __CrestStore(121, (unsigned long )(& tmp___1));
#line 44
      tmp___1 = 1;
    }
    }
  } else {
    __CrestBranch(109, 39, 0);
    __CrestLoad(122, (unsigned long )0, (long long )1);
    __CrestStore(123, (unsigned long )(& tmp___1));
#line 44
    tmp___1 = 1;
  }
  __CrestLoad(124, (unsigned long )(& tmp___1), (long long )tmp___1);
  __CrestReturn(125);
#line 44
  return (tmp___1);
}
}
void __globinit_primemod(void) 
{ 


  {
  __CrestInit();
}
}