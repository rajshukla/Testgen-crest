# 1 "./insertionSort.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./insertionSort.cil.c"
# 3 "insertionSort.c"
void __globinit_insertionSort(void) ;
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
# 431 "/usr/include/stdio.h"
extern int scanf(char const * __restrict __format , ...) __asm__("__isoc99_scanf") ;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 3 "insertionSort.c"
int main(void)
{
  int n ;
  int array[1000] ;
  int c ;
  int d ;
  int t ;
  int __retres6 ;

  {
  __globinit_insertionSort();
  __CrestCall(1, 1);
# 6 "insertionSort.c"
  __CrestInt((int *)(& array));
# 7 "insertionSort.c"
  __CrestInt(& n);
# 9 "insertionSort.c"
  printf((char const * __restrict )"Enter number of elements\n");
  __CrestClearStack(2);
  __CrestLoad(3, (unsigned long )(& n), (long long )n);
# 12 "insertionSort.c"
  printf((char const * __restrict )"Enter %d integers\n", n);
  __CrestClearStack(4);
  __CrestLoad(5, (unsigned long )0, (long long )0);
  __CrestStore(6, (unsigned long )(& c));
# 14 "insertionSort.c"
  c = 0;
  __CrestLoad(7, (unsigned long )0, (long long )1);
  __CrestStore(8, (unsigned long )(& c));
# 18 "insertionSort.c"
  c = 1;
  __CrestLoad(13, (unsigned long )(& c), (long long )c);
  __CrestLoad(12, (unsigned long )(& n), (long long )n);
  __CrestLoad(11, (unsigned long )0, (long long )1);
  __CrestApply2(10, 1, (long long )(n - 1));
  __CrestApply2(9, 15, (long long )(c <= n - 1));
  if (c <= n - 1) {
    __CrestBranch(14, 6, 1);
    __CrestLoad(16, (unsigned long )(& c), (long long )c);
    __CrestStore(17, (unsigned long )(& d));
    d = c;
    {
    {
    __CrestLoad(20, (unsigned long )(& d), (long long )d);
    __CrestLoad(19, (unsigned long )0, (long long )0);
    __CrestApply2(18, 14, (long long )(d > 0));
    if (d > 0) {
      __CrestBranch(21, 9, 1);
      {
      __CrestLoad(25, (unsigned long )(& array[d]), (long long )array[d]);
      __CrestLoad(24, (unsigned long )(& array[d - 1]), (long long )array[d - 1]);
      __CrestApply2(23, 16, (long long )(array[d] < array[d - 1]));
      if (array[d] < array[d - 1]) {
        __CrestBranch(26, 10, 1);
        __CrestLoad(28, (unsigned long )(& array[d]), (long long )array[d]);
        __CrestStore(29, (unsigned long )(& t));
        t = array[d];
        __CrestLoad(30, (unsigned long )(& array[d - 1]), (long long )array[d - 1]);
        __CrestStore(31, (unsigned long )(& array[d]));
        array[d] = array[d - 1];
        __CrestLoad(32, (unsigned long )(& t), (long long )t);
        __CrestStore(33, (unsigned long )(& array[d - 1]));
        array[d - 1] = t;
        __CrestLoad(36, (unsigned long )(& d), (long long )d);
        __CrestLoad(35, (unsigned long )0, (long long )1);
        __CrestApply2(34, 1, (long long )(d - 1));
        __CrestStore(37, (unsigned long )(& d));
        d --;
      } else {
        __CrestBranch(27, 11, 0);

      }
      }
    } else {
      __CrestBranch(22, 12, 0);

    }
    }
    {
    __CrestLoad(40, (unsigned long )(& d), (long long )d);
    __CrestLoad(39, (unsigned long )0, (long long )0);
    __CrestApply2(38, 14, (long long )(d > 0));
    if (d > 0) {
      __CrestBranch(41, 14, 1);
      {
      __CrestLoad(45, (unsigned long )(& array[d]), (long long )array[d]);
      __CrestLoad(44, (unsigned long )(& array[d - 1]), (long long )array[d - 1]);
      __CrestApply2(43, 16, (long long )(array[d] < array[d - 1]));
      if (array[d] < array[d - 1]) {
        __CrestBranch(46, 15, 1);
        __CrestLoad(48, (unsigned long )(& array[d]), (long long )array[d]);
        __CrestStore(49, (unsigned long )(& t));
        t = array[d];
        __CrestLoad(50, (unsigned long )(& array[d - 1]), (long long )array[d - 1]);
        __CrestStore(51, (unsigned long )(& array[d]));
        array[d] = array[d - 1];
        __CrestLoad(52, (unsigned long )(& t), (long long )t);
        __CrestStore(53, (unsigned long )(& array[d - 1]));
        array[d - 1] = t;
        __CrestLoad(56, (unsigned long )(& d), (long long )d);
        __CrestLoad(55, (unsigned long )0, (long long )1);
        __CrestApply2(54, 1, (long long )(d - 1));
        __CrestStore(57, (unsigned long )(& d));
        d --;
      } else {
        __CrestBranch(47, 16, 0);

      }
      }
    } else {
      __CrestBranch(42, 17, 0);

    }
    }
    }
    __CrestLoad(60, (unsigned long )(& c), (long long )c);
    __CrestLoad(59, (unsigned long )0, (long long )1);
    __CrestApply2(58, 0, (long long )(c + 1));
    __CrestStore(61, (unsigned long )(& c));
    c ++;
  } else {
    __CrestBranch(15, 19, 0);

  }
  __CrestLoad(66, (unsigned long )(& c), (long long )c);
  __CrestLoad(65, (unsigned long )(& n), (long long )n);
  __CrestLoad(64, (unsigned long )0, (long long )1);
  __CrestApply2(63, 1, (long long )(n - 1));
  __CrestApply2(62, 15, (long long )(c <= n - 1));
  if (c <= n - 1) {
    __CrestBranch(67, 21, 1);
    __CrestLoad(69, (unsigned long )(& c), (long long )c);
    __CrestStore(70, (unsigned long )(& d));
    d = c;
    {
    {
    __CrestLoad(73, (unsigned long )(& d), (long long )d);
    __CrestLoad(72, (unsigned long )0, (long long )0);
    __CrestApply2(71, 14, (long long )(d > 0));
    if (d > 0) {
      __CrestBranch(74, 24, 1);
      {
      __CrestLoad(78, (unsigned long )(& array[d]), (long long )array[d]);
      __CrestLoad(77, (unsigned long )(& array[d - 1]), (long long )array[d - 1]);
      __CrestApply2(76, 16, (long long )(array[d] < array[d - 1]));
      if (array[d] < array[d - 1]) {
        __CrestBranch(79, 25, 1);
        __CrestLoad(81, (unsigned long )(& array[d]), (long long )array[d]);
        __CrestStore(82, (unsigned long )(& t));
        t = array[d];
        __CrestLoad(83, (unsigned long )(& array[d - 1]), (long long )array[d - 1]);
        __CrestStore(84, (unsigned long )(& array[d]));
        array[d] = array[d - 1];
        __CrestLoad(85, (unsigned long )(& t), (long long )t);
        __CrestStore(86, (unsigned long )(& array[d - 1]));
        array[d - 1] = t;
        __CrestLoad(89, (unsigned long )(& d), (long long )d);
        __CrestLoad(88, (unsigned long )0, (long long )1);
        __CrestApply2(87, 1, (long long )(d - 1));
        __CrestStore(90, (unsigned long )(& d));
        d --;
      } else {
        __CrestBranch(80, 26, 0);

      }
      }
    } else {
      __CrestBranch(75, 27, 0);

    }
    }
    {
    __CrestLoad(93, (unsigned long )(& d), (long long )d);
    __CrestLoad(92, (unsigned long )0, (long long )0);
    __CrestApply2(91, 14, (long long )(d > 0));
    if (d > 0) {
      __CrestBranch(94, 29, 1);
      {
      __CrestLoad(98, (unsigned long )(& array[d]), (long long )array[d]);
      __CrestLoad(97, (unsigned long )(& array[d - 1]), (long long )array[d - 1]);
      __CrestApply2(96, 16, (long long )(array[d] < array[d - 1]));
      if (array[d] < array[d - 1]) {
        __CrestBranch(99, 30, 1);
        __CrestLoad(101, (unsigned long )(& array[d]), (long long )array[d]);
        __CrestStore(102, (unsigned long )(& t));
        t = array[d];
        __CrestLoad(103, (unsigned long )(& array[d - 1]), (long long )array[d - 1]);
        __CrestStore(104, (unsigned long )(& array[d]));
        array[d] = array[d - 1];
        __CrestLoad(105, (unsigned long )(& t), (long long )t);
        __CrestStore(106, (unsigned long )(& array[d - 1]));
        array[d - 1] = t;
        __CrestLoad(109, (unsigned long )(& d), (long long )d);
        __CrestLoad(108, (unsigned long )0, (long long )1);
        __CrestApply2(107, 1, (long long )(d - 1));
        __CrestStore(110, (unsigned long )(& d));
        d --;
      } else {
        __CrestBranch(100, 31, 0);

      }
      }
    } else {
      __CrestBranch(95, 32, 0);

    }
    }
    }
    __CrestLoad(113, (unsigned long )(& c), (long long )c);
    __CrestLoad(112, (unsigned long )0, (long long )1);
    __CrestApply2(111, 0, (long long )(c + 1));
    __CrestStore(114, (unsigned long )(& c));
    c ++;
  } else {
    __CrestBranch(68, 34, 0);

  }
# 30 "insertionSort.c"
  printf((char const * __restrict )"Sorted list in ascending order:\n");
  __CrestClearStack(115);
  __CrestLoad(116, (unsigned long )0, (long long )0);
  __CrestStore(117, (unsigned long )(& c));
# 32 "insertionSort.c"
  c = 0;
  __CrestLoad(122, (unsigned long )(& c), (long long )c);
  __CrestLoad(121, (unsigned long )(& n), (long long )n);
  __CrestLoad(120, (unsigned long )0, (long long )1);
  __CrestApply2(119, 1, (long long )(n - 1));
  __CrestApply2(118, 15, (long long )(c <= n - 1));
  if (c <= n - 1) {
    __CrestBranch(123, 38, 1);
    __CrestLoad(125, (unsigned long )(& array[c]), (long long )array[c]);
    printf((char const * __restrict )"%d\n", array[c]);
    __CrestClearStack(126);
    __CrestLoad(129, (unsigned long )(& c), (long long )c);
    __CrestLoad(128, (unsigned long )0, (long long )1);
    __CrestApply2(127, 0, (long long )(c + 1));
    __CrestStore(130, (unsigned long )(& c));
    c ++;
  } else {
    __CrestBranch(124, 39, 0);

  }
  __CrestLoad(135, (unsigned long )(& c), (long long )c);
  __CrestLoad(134, (unsigned long )(& n), (long long )n);
  __CrestLoad(133, (unsigned long )0, (long long )1);
  __CrestApply2(132, 1, (long long )(n - 1));
  __CrestApply2(131, 15, (long long )(c <= n - 1));
  if (c <= n - 1) {
    __CrestBranch(136, 41, 1);
    __CrestLoad(138, (unsigned long )(& array[c]), (long long )array[c]);
    printf((char const * __restrict )"%d\n", array[c]);
    __CrestClearStack(139);
    __CrestLoad(142, (unsigned long )(& c), (long long )c);
    __CrestLoad(141, (unsigned long )0, (long long )1);
    __CrestApply2(140, 0, (long long )(c + 1));
    __CrestStore(143, (unsigned long )(& c));
    c ++;
  } else {
    __CrestBranch(137, 42, 0);

  }
  __CrestLoad(144, (unsigned long )0, (long long )0);
  __CrestStore(145, (unsigned long )(& __retres6));
# 36 "insertionSort.c"
  __retres6 = 0;
  __CrestLoad(146, (unsigned long )(& __retres6), (long long )__retres6);
  __CrestReturn(147);
# 3 "insertionSort.c"
  return (__retres6);
}
}
void __globinit_insertionSort(void)
{


  {
  __CrestInit();
}
}
