# 1 "./triangle.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./triangle.cil.c"
# 4 "triangle.c"
void __globinit_triangle(void) ;
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
void createCDG(void)
{


  {
  __CrestCall(1, 1);

  {
  __CrestReturn(2);
  return;
  }
}
}
void isCopyOfHolder(void)
{


  {
  __CrestCall(3, 2);

  {
  __CrestReturn(4);
  return;
  }
}
}
# 4 "triangle.c"
int main(void)
{
  int side1 ;
  int side2 ;
  int side3 ;
  int triang ;
  int __retres5 ;

  {
  __globinit_triangle();
  __CrestCall(5, 3);
# 7 "triangle.c"
  __CrestInt(& side1);
# 8 "triangle.c"
  __CrestInt(& side2);
# 9 "triangle.c"
  __CrestInt(& side3);
  __CrestLoad(8, (unsigned long )(& side1), (long long )side1);
  __CrestLoad(7, (unsigned long )0, (long long )0);
  __CrestApply2(6, 16, (long long )(side1 < 0));
# 12 "triangle.c"
  if (side1 < 0) {
    __CrestBranch(9, 5, 1);
# 13 "triangle.c"
    printf((char const * __restrict )"Illegal arguments !! \n");
    __CrestClearStack(11);
  } else {
    __CrestBranch(10, 6, 0);
    {
    __CrestLoad(14, (unsigned long )(& side2), (long long )side2);
    __CrestLoad(13, (unsigned long )0, (long long )0);
    __CrestApply2(12, 16, (long long )(side2 < 0));
# 12 "triangle.c"
    if (side2 < 0) {
      __CrestBranch(15, 7, 1);
# 13 "triangle.c"
      printf((char const * __restrict )"Illegal arguments !! \n");
      __CrestClearStack(17);
    } else {
      __CrestBranch(16, 8, 0);
      {
      __CrestLoad(20, (unsigned long )(& side3), (long long )side3);
      __CrestLoad(19, (unsigned long )0, (long long )0);
      __CrestApply2(18, 16, (long long )(side3 < 0));
# 12 "triangle.c"
      if (side3 < 0) {
        __CrestBranch(21, 9, 1);
# 13 "triangle.c"
        printf((char const * __restrict )"Illegal arguments !! \n");
        __CrestClearStack(23);
      } else {
        __CrestBranch(22, 10, 0);
        __CrestLoad(24, (unsigned long )0, (long long )0);
        __CrestStore(25, (unsigned long )(& triang));
# 16 "triangle.c"
        triang = 0;
        {
        __CrestLoad(28, (unsigned long )(& side1), (long long )side1);
        __CrestLoad(27, (unsigned long )(& side2), (long long )side2);
        __CrestApply2(26, 12, (long long )(side1 == side2));
# 17 "triangle.c"
        if (side1 == side2) {
          __CrestBranch(29, 12, 1);
          __CrestLoad(33, (unsigned long )(& triang), (long long )triang);
          __CrestLoad(32, (unsigned long )0, (long long )1);
          __CrestApply2(31, 0, (long long )(triang + 1));
          __CrestStore(34, (unsigned long )(& triang));
# 18 "triangle.c"
          triang ++;
        } else {
          __CrestBranch(30, 13, 0);
# 21 "triangle.c"
          printf((char const * __restrict )"not equal side1 and side2 \n");
          __CrestClearStack(35);
        }
        }
        {
        __CrestLoad(38, (unsigned long )(& side2), (long long )side2);
        __CrestLoad(37, (unsigned long )(& side3), (long long )side3);
        __CrestApply2(36, 12, (long long )(side2 == side3));
# 23 "triangle.c"
        if (side2 == side3) {
          __CrestBranch(39, 15, 1);
          __CrestLoad(43, (unsigned long )(& triang), (long long )triang);
          __CrestLoad(42, (unsigned long )0, (long long )2);
          __CrestApply2(41, 0, (long long )(triang + 2));
          __CrestStore(44, (unsigned long )(& triang));
# 24 "triangle.c"
          triang += 2;
        } else {
          __CrestBranch(40, 16, 0);
# 26 "triangle.c"
          printf((char const * __restrict )"not equal side2 and side3 \n");
          __CrestClearStack(45);
        }
        }
        {
        __CrestLoad(48, (unsigned long )(& side1), (long long )side1);
        __CrestLoad(47, (unsigned long )(& side3), (long long )side3);
        __CrestApply2(46, 12, (long long )(side1 == side3));
# 28 "triangle.c"
        if (side1 == side3) {
          __CrestBranch(49, 18, 1);
          __CrestLoad(53, (unsigned long )(& triang), (long long )triang);
          __CrestLoad(52, (unsigned long )0, (long long )3);
          __CrestApply2(51, 0, (long long )(triang + 3));
          __CrestStore(54, (unsigned long )(& triang));
# 29 "triangle.c"
          triang += 3;
        } else {
          __CrestBranch(50, 19, 0);
# 31 "triangle.c"
          printf((char const * __restrict )"not equal side1 and side3 \n");
          __CrestClearStack(55);
        }
        }
        __CrestLoad(56, (unsigned long )(& side1), (long long )side1);
        __CrestLoad(57, (unsigned long )(& side2), (long long )side2);
        __CrestLoad(58, (unsigned long )(& side3), (long long )side3);
        __CrestLoad(59, (unsigned long )(& triang), (long long )triang);
# 33 "triangle.c"
        printf((char const * __restrict )"side1=%d, side2=%d, side3=%d, triang = %d\n",
               side1, side2, side3, triang);
        __CrestClearStack(60);
        {
        __CrestLoad(63, (unsigned long )(& triang), (long long )triang);
        __CrestLoad(62, (unsigned long )0, (long long )0);
        __CrestApply2(61, 12, (long long )(triang == 0));
# 35 "triangle.c"
        if (triang == 0) {
          __CrestBranch(64, 22, 1);
          {
          __CrestLoad(70, (unsigned long )(& side1), (long long )side1);
          __CrestLoad(69, (unsigned long )(& side2), (long long )side2);
          __CrestApply2(68, 0, (long long )(side1 + side2));
          __CrestLoad(67, (unsigned long )(& side3), (long long )side3);
          __CrestApply2(66, 16, (long long )(side1 + side2 < side3));
# 37 "triangle.c"
          if (side1 + side2 < side3) {
            __CrestBranch(71, 23, 1);
# 38 "triangle.c"
            printf((char const * __restrict )"Illegal arguments !! \n");
            __CrestClearStack(73);
          } else {
            __CrestBranch(72, 24, 0);
            {
            __CrestLoad(78, (unsigned long )(& side2), (long long )side2);
            __CrestLoad(77, (unsigned long )(& side3), (long long )side3);
            __CrestApply2(76, 0, (long long )(side2 + side3));
            __CrestLoad(75, (unsigned long )(& side1), (long long )side1);
            __CrestApply2(74, 16, (long long )(side2 + side3 < side1));
# 37 "triangle.c"
            if (side2 + side3 < side1) {
              __CrestBranch(79, 25, 1);
# 38 "triangle.c"
              printf((char const * __restrict )"Illegal arguments !! \n");
              __CrestClearStack(81);
            } else {
              __CrestBranch(80, 26, 0);
              {
              __CrestLoad(86, (unsigned long )(& side1), (long long )side1);
              __CrestLoad(85, (unsigned long )(& side2), (long long )side2);
              __CrestApply2(84, 0, (long long )(side1 + side2));
              __CrestLoad(83, (unsigned long )(& side3), (long long )side3);
              __CrestApply2(82, 16, (long long )(side1 + side2 < side3));
# 37 "triangle.c"
              if (side1 + side2 < side3) {
                __CrestBranch(87, 27, 1);
# 38 "triangle.c"
                printf((char const * __restrict )"Illegal arguments !! \n");
                __CrestClearStack(89);
              } else {
                __CrestBranch(88, 28, 0);
# 40 "triangle.c"
                printf((char const * __restrict )"Scalene triangle \n");
                __CrestClearStack(90);
              }
              }
            }
            }
          }
          }
        } else {
          __CrestBranch(65, 29, 0);
          {
          __CrestLoad(93, (unsigned long )(& triang), (long long )triang);
          __CrestLoad(92, (unsigned long )0, (long long )3);
          __CrestApply2(91, 14, (long long )(triang > 3));
# 44 "triangle.c"
          if (triang > 3) {
            __CrestBranch(94, 30, 1);
# 45 "triangle.c"
            printf((char const * __restrict )"Equilateral triangle \n");
            __CrestClearStack(96);
          } else {
            __CrestBranch(95, 31, 0);
            {
            __CrestLoad(99, (unsigned long )(& triang), (long long )triang);
            __CrestLoad(98, (unsigned long )0, (long long )1);
            __CrestApply2(97, 12, (long long )(triang == 1));
# 48 "triangle.c"
            if (triang == 1) {
              __CrestBranch(100, 32, 1);
              {
              __CrestLoad(106, (unsigned long )(& side1), (long long )side1);
              __CrestLoad(105, (unsigned long )(& side2), (long long )side2);
              __CrestApply2(104, 0, (long long )(side1 + side2));
              __CrestLoad(103, (unsigned long )(& side3), (long long )side3);
              __CrestApply2(102, 14, (long long )(side1 + side2 > side3));
# 48 "triangle.c"
              if (side1 + side2 > side3) {
                __CrestBranch(107, 33, 1);
# 49 "triangle.c"
                printf((char const * __restrict )"Isosceles triangle \n");
                __CrestClearStack(109);
              } else {
                __CrestBranch(108, 34, 0);
# 48 "triangle.c"
                goto _L___0;
              }
              }
            } else {
              __CrestBranch(101, 35, 0);
              _L___0:
              {
              __CrestLoad(112, (unsigned long )(& triang), (long long )triang);
              __CrestLoad(111, (unsigned long )0, (long long )2);
              __CrestApply2(110, 12, (long long )(triang == 2));
# 52 "triangle.c"
              if (triang == 2) {
                __CrestBranch(113, 36, 1);
                {
                __CrestLoad(119, (unsigned long )(& side2), (long long )side2);
                __CrestLoad(118, (unsigned long )(& side3), (long long )side3);
                __CrestApply2(117, 0, (long long )(side2 + side3));
                __CrestLoad(116, (unsigned long )(& side1), (long long )side1);
                __CrestApply2(115, 14, (long long )(side2 + side3 > side1));
# 52 "triangle.c"
                if (side2 + side3 > side1) {
                  __CrestBranch(120, 37, 1);
# 53 "triangle.c"
                  printf((char const * __restrict )"Isosceles triangle \n");
                  __CrestClearStack(122);
                } else {
                  __CrestBranch(121, 38, 0);
# 52 "triangle.c"
                  goto _L;
                }
                }
              } else {
                __CrestBranch(114, 39, 0);
                _L:
                {
                __CrestLoad(125, (unsigned long )(& triang), (long long )triang);
                __CrestLoad(124, (unsigned long )0, (long long )3);
                __CrestApply2(123, 12, (long long )(triang == 3));
# 56 "triangle.c"
                if (triang == 3) {
                  __CrestBranch(126, 40, 1);
                  {
                  __CrestLoad(132, (unsigned long )(& side1), (long long )side1);
                  __CrestLoad(131, (unsigned long )(& side3), (long long )side3);
                  __CrestApply2(130, 0, (long long )(side1 + side3));
                  __CrestLoad(129, (unsigned long )(& side2), (long long )side2);
                  __CrestApply2(128, 14, (long long )(side1 + side3 > side2));
# 56 "triangle.c"
                  if (side1 + side3 > side2) {
                    __CrestBranch(133, 41, 1);
# 57 "triangle.c"
                    printf((char const * __restrict )"Isosceles triangle \n");
                    __CrestClearStack(135);
                  } else {
                    __CrestBranch(134, 42, 0);
# 59 "triangle.c"
                    printf((char const * __restrict )"ILLegal !!! \n");
                    __CrestClearStack(136);
                  }
                  }
                } else {
                  __CrestBranch(127, 43, 0);
# 59 "triangle.c"
                  printf((char const * __restrict )"ILLegal !!! \n");
                  __CrestClearStack(137);
                }
                }
              }
              }
            }
            }
          }
          }
        }
        }
      }
      }
    }
    }
  }
  __CrestLoad(138, (unsigned long )0, (long long )0);
  __CrestStore(139, (unsigned long )(& __retres5));
# 68 "triangle.c"
  __retres5 = 0;
  __CrestLoad(140, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(141);
# 4 "triangle.c"
  return (__retres5);
}
}
void __globinit_triangle(void)
{


  {
  __CrestInit();
}
}
