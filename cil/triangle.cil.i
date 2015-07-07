# 1 "./triangle.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./triangle.cil.c"



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
extern int printf(char const * __restrict __format , ...) ;
extern int scanf(char const * __restrict __format , ...) __asm__("__isoc99_scanf") ;
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
  scanf((char const * __restrict )"%d%d%d", & side1, & side2, & side3);
  __CrestClearStack(6);
  __CrestLoad(9, (unsigned long )(& side1), (long long )side1);
  __CrestLoad(8, (unsigned long )0, (long long )0);
  __CrestApply2(7, 16, (long long )(side1 < 0));
  if (side1 < 0) {
    __CrestBranch(10, 5, 1);
    printf((char const * __restrict )"Illegal arguments !! \n");
    __CrestClearStack(12);
  } else {
    __CrestBranch(11, 6, 0);
    {
    __CrestLoad(15, (unsigned long )(& side2), (long long )side2);
    __CrestLoad(14, (unsigned long )0, (long long )0);
    __CrestApply2(13, 16, (long long )(side2 < 0));
    if (side2 < 0) {
      __CrestBranch(16, 7, 1);
      printf((char const * __restrict )"Illegal arguments !! \n");
      __CrestClearStack(18);
    } else {
      __CrestBranch(17, 8, 0);
      {
      __CrestLoad(21, (unsigned long )(& side3), (long long )side3);
      __CrestLoad(20, (unsigned long )0, (long long )0);
      __CrestApply2(19, 16, (long long )(side3 < 0));
      if (side3 < 0) {
        __CrestBranch(22, 9, 1);
        printf((char const * __restrict )"Illegal arguments !! \n");
        __CrestClearStack(24);
      } else {
        __CrestBranch(23, 10, 0);
        __CrestLoad(25, (unsigned long )0, (long long )0);
        __CrestStore(26, (unsigned long )(& triang));
        triang = 0;
        {
        __CrestLoad(29, (unsigned long )(& side1), (long long )side1);
        __CrestLoad(28, (unsigned long )(& side2), (long long )side2);
        __CrestApply2(27, 12, (long long )(side1 == side2));
        if (side1 == side2) {
          __CrestBranch(30, 12, 1);
          __CrestLoad(34, (unsigned long )(& triang), (long long )triang);
          __CrestLoad(33, (unsigned long )0, (long long )1);
          __CrestApply2(32, 0, (long long )(triang + 1));
          __CrestStore(35, (unsigned long )(& triang));
          triang ++;
        } else {
          __CrestBranch(31, 13, 0);
          printf((char const * __restrict )"not equal side1 and side2 \n");
          __CrestClearStack(36);
        }
        }
        {
        __CrestLoad(39, (unsigned long )(& side2), (long long )side2);
        __CrestLoad(38, (unsigned long )(& side3), (long long )side3);
        __CrestApply2(37, 12, (long long )(side2 == side3));
        if (side2 == side3) {
          __CrestBranch(40, 15, 1);
          __CrestLoad(44, (unsigned long )(& triang), (long long )triang);
          __CrestLoad(43, (unsigned long )0, (long long )2);
          __CrestApply2(42, 0, (long long )(triang + 2));
          __CrestStore(45, (unsigned long )(& triang));
          triang += 2;
        } else {
          __CrestBranch(41, 16, 0);
          printf((char const * __restrict )"not equal side2 and side3 \n");
          __CrestClearStack(46);
        }
        }
        {
        __CrestLoad(49, (unsigned long )(& side1), (long long )side1);
        __CrestLoad(48, (unsigned long )(& side3), (long long )side3);
        __CrestApply2(47, 12, (long long )(side1 == side3));
        if (side1 == side3) {
          __CrestBranch(50, 18, 1);
          __CrestLoad(54, (unsigned long )(& triang), (long long )triang);
          __CrestLoad(53, (unsigned long )0, (long long )3);
          __CrestApply2(52, 0, (long long )(triang + 3));
          __CrestStore(55, (unsigned long )(& triang));
          triang += 3;
        } else {
          __CrestBranch(51, 19, 0);
          printf((char const * __restrict )"not equal side1 and side3 \n");
          __CrestClearStack(56);
        }
        }
        __CrestLoad(57, (unsigned long )(& side1), (long long )side1);
        __CrestLoad(58, (unsigned long )(& side2), (long long )side2);
        __CrestLoad(59, (unsigned long )(& side3), (long long )side3);
        __CrestLoad(60, (unsigned long )(& triang), (long long )triang);
        printf((char const * __restrict )"side1=%d, side2=%d, side3=%d, triang = %d\n",
               side1, side2, side3, triang);
        __CrestClearStack(61);
        {
        __CrestLoad(64, (unsigned long )(& triang), (long long )triang);
        __CrestLoad(63, (unsigned long )0, (long long )0);
        __CrestApply2(62, 12, (long long )(triang == 0));
        if (triang == 0) {
          __CrestBranch(65, 22, 1);
          {
          __CrestLoad(71, (unsigned long )(& side1), (long long )side1);
          __CrestLoad(70, (unsigned long )(& side2), (long long )side2);
          __CrestApply2(69, 0, (long long )(side1 + side2));
          __CrestLoad(68, (unsigned long )(& side3), (long long )side3);
          __CrestApply2(67, 16, (long long )(side1 + side2 < side3));
          if (side1 + side2 < side3) {
            __CrestBranch(72, 23, 1);
            printf((char const * __restrict )"Illegal arguments !! \n");
            __CrestClearStack(74);
          } else {
            __CrestBranch(73, 24, 0);
            {
            __CrestLoad(79, (unsigned long )(& side2), (long long )side2);
            __CrestLoad(78, (unsigned long )(& side3), (long long )side3);
            __CrestApply2(77, 0, (long long )(side2 + side3));
            __CrestLoad(76, (unsigned long )(& side1), (long long )side1);
            __CrestApply2(75, 16, (long long )(side2 + side3 < side1));
            if (side2 + side3 < side1) {
              __CrestBranch(80, 25, 1);
              printf((char const * __restrict )"Illegal arguments !! \n");
              __CrestClearStack(82);
            } else {
              __CrestBranch(81, 26, 0);
              {
              __CrestLoad(87, (unsigned long )(& side1), (long long )side1);
              __CrestLoad(86, (unsigned long )(& side2), (long long )side2);
              __CrestApply2(85, 0, (long long )(side1 + side2));
              __CrestLoad(84, (unsigned long )(& side3), (long long )side3);
              __CrestApply2(83, 16, (long long )(side1 + side2 < side3));
              if (side1 + side2 < side3) {
                __CrestBranch(88, 27, 1);
                printf((char const * __restrict )"Illegal arguments !! \n");
                __CrestClearStack(90);
              } else {
                __CrestBranch(89, 28, 0);
                printf((char const * __restrict )"Scalene triangle \n");
                __CrestClearStack(91);
              }
              }
            }
            }
          }
          }
        } else {
          __CrestBranch(66, 29, 0);
          {
          __CrestLoad(94, (unsigned long )(& triang), (long long )triang);
          __CrestLoad(93, (unsigned long )0, (long long )3);
          __CrestApply2(92, 14, (long long )(triang > 3));
          if (triang > 3) {
            __CrestBranch(95, 30, 1);
            printf((char const * __restrict )"Equilateral triangle \n");
            __CrestClearStack(97);
          } else {
            __CrestBranch(96, 31, 0);
            {
            __CrestLoad(100, (unsigned long )(& triang), (long long )triang);
            __CrestLoad(99, (unsigned long )0, (long long )1);
            __CrestApply2(98, 12, (long long )(triang == 1));
            if (triang == 1) {
              __CrestBranch(101, 32, 1);
              {
              __CrestLoad(107, (unsigned long )(& side1), (long long )side1);
              __CrestLoad(106, (unsigned long )(& side2), (long long )side2);
              __CrestApply2(105, 0, (long long )(side1 + side2));
              __CrestLoad(104, (unsigned long )(& side3), (long long )side3);
              __CrestApply2(103, 14, (long long )(side1 + side2 > side3));
              if (side1 + side2 > side3) {
                __CrestBranch(108, 33, 1);
                printf((char const * __restrict )"Isosceles triangle \n");
                __CrestClearStack(110);
              } else {
                __CrestBranch(109, 34, 0);
                goto _L___0;
              }
              }
            } else {
              __CrestBranch(102, 35, 0);
              _L___0:
              {
              __CrestLoad(113, (unsigned long )(& triang), (long long )triang);
              __CrestLoad(112, (unsigned long )0, (long long )2);
              __CrestApply2(111, 12, (long long )(triang == 2));
              if (triang == 2) {
                __CrestBranch(114, 36, 1);
                {
                __CrestLoad(120, (unsigned long )(& side2), (long long )side2);
                __CrestLoad(119, (unsigned long )(& side3), (long long )side3);
                __CrestApply2(118, 0, (long long )(side2 + side3));
                __CrestLoad(117, (unsigned long )(& side1), (long long )side1);
                __CrestApply2(116, 14, (long long )(side2 + side3 > side1));
                if (side2 + side3 > side1) {
                  __CrestBranch(121, 37, 1);
                  printf((char const * __restrict )"Isosceles triangle \n");
                  __CrestClearStack(123);
                } else {
                  __CrestBranch(122, 38, 0);
                  goto _L;
                }
                }
              } else {
                __CrestBranch(115, 39, 0);
                _L:
                {
                __CrestLoad(126, (unsigned long )(& triang), (long long )triang);
                __CrestLoad(125, (unsigned long )0, (long long )3);
                __CrestApply2(124, 12, (long long )(triang == 3));
                if (triang == 3) {
                  __CrestBranch(127, 40, 1);
                  {
                  __CrestLoad(133, (unsigned long )(& side1), (long long )side1);
                  __CrestLoad(132, (unsigned long )(& side3), (long long )side3);
                  __CrestApply2(131, 0, (long long )(side1 + side3));
                  __CrestLoad(130, (unsigned long )(& side2), (long long )side2);
                  __CrestApply2(129, 14, (long long )(side1 + side3 > side2));
                  if (side1 + side3 > side2) {
                    __CrestBranch(134, 41, 1);
                    printf((char const * __restrict )"Isosceles triangle \n");
                    __CrestClearStack(136);
                  } else {
                    __CrestBranch(135, 42, 0);
                    printf((char const * __restrict )"ILLegal !!! \n");
                    __CrestClearStack(137);
                  }
                  }
                } else {
                  __CrestBranch(128, 43, 0);
                  printf((char const * __restrict )"ILLegal !!! \n");
                  __CrestClearStack(138);
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
  __CrestLoad(139, (unsigned long )0, (long long )0);
  __CrestStore(140, (unsigned long )(& __retres5));
  __retres5 = 0;
  __CrestLoad(141, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(142);
  return (__retres5);
}
}
void __globinit_triangle(void)
{


  {
  __CrestInit();
}
}
