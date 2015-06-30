# 1 "./table_test.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./table_test.cil.c"
# 18 "table_test.c"
void __globinit_table_test(void) ;
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
# 15 "table_test.c"
int A[100] ;
# 16 "table_test.c"
char B[12][97] ;
# 18 "table_test.c"
int main(void)
{
  int x ;
  int y ;
  int i ;
  int j ;
  int __retres5 ;

  {
  __globinit_table_test();
  __CrestCall(1, 1);
# 21 "table_test.c"
  __CrestInt(& x);
# 22 "table_test.c"
  __CrestInt(& y);
  __CrestLoad(4, (unsigned long )(& x), (long long )x);
  __CrestLoad(3, (unsigned long )0, (long long )0);
  __CrestApply2(2, 16, (long long )(x < 0));
# 24 "table_test.c"
  if (x < 0) {
    __CrestBranch(5, 3, 1);
    __CrestLoad(7, (unsigned long )0, (long long )0);
    __CrestStore(8, (unsigned long )(& __retres5));
# 25 "table_test.c"
    __retres5 = 0;
# 25 "table_test.c"
    goto return_label;
  } else {
    __CrestBranch(6, 5, 0);
    {
    __CrestLoad(11, (unsigned long )(& x), (long long )x);
    __CrestLoad(10, (unsigned long )0, (long long )97);
    __CrestApply2(9, 17, (long long )(x >= 97));
# 24 "table_test.c"
    if (x >= 97) {
      __CrestBranch(12, 6, 1);
      __CrestLoad(14, (unsigned long )0, (long long )0);
      __CrestStore(15, (unsigned long )(& __retres5));
# 25 "table_test.c"
      __retres5 = 0;
# 25 "table_test.c"
      goto return_label;
    } else {
      __CrestBranch(13, 8, 0);

    }
    }
  }
  __CrestLoad(18, (unsigned long )(& y), (long long )y);
  __CrestLoad(17, (unsigned long )0, (long long )0);
  __CrestApply2(16, 16, (long long )(y < 0));
# 26 "table_test.c"
  if (y < 0) {
    __CrestBranch(19, 10, 1);
    __CrestLoad(21, (unsigned long )0, (long long )0);
    __CrestStore(22, (unsigned long )(& __retres5));
# 27 "table_test.c"
    __retres5 = 0;
# 27 "table_test.c"
    goto return_label;
  } else {
    __CrestBranch(20, 12, 0);
    {
    __CrestLoad(25, (unsigned long )(& y), (long long )y);
    __CrestLoad(24, (unsigned long )0, (long long )12);
    __CrestApply2(23, 17, (long long )(y >= 12));
# 26 "table_test.c"
    if (y >= 12) {
      __CrestBranch(26, 13, 1);
      __CrestLoad(28, (unsigned long )0, (long long )0);
      __CrestStore(29, (unsigned long )(& __retres5));
# 27 "table_test.c"
      __retres5 = 0;
# 27 "table_test.c"
      goto return_label;
    } else {
      __CrestBranch(27, 15, 0);

    }
    }
  }
  __CrestLoad(30, (unsigned long )0, (long long )0);
  __CrestStore(31, (unsigned long )(& i));
# 29 "table_test.c"
  i = 0;
  __CrestLoad(34, (unsigned long )(& i), (long long )i);
  __CrestLoad(33, (unsigned long )0, (long long )100);
  __CrestApply2(32, 16, (long long )(i < 100));
  if (i < 100) {
    __CrestBranch(35, 19, 1);
    __CrestLoad(37, (unsigned long )(& i), (long long )i);
    __CrestStore(38, (unsigned long )(& A[i]));
    A[i] = i;
    __CrestLoad(41, (unsigned long )(& i), (long long )i);
    __CrestLoad(40, (unsigned long )0, (long long )1);
    __CrestApply2(39, 0, (long long )(i + 1));
    __CrestStore(42, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(36, 20, 0);

  }
  __CrestLoad(45, (unsigned long )(& i), (long long )i);
  __CrestLoad(44, (unsigned long )0, (long long )100);
  __CrestApply2(43, 16, (long long )(i < 100));
  if (i < 100) {
    __CrestBranch(46, 22, 1);
    __CrestLoad(48, (unsigned long )(& i), (long long )i);
    __CrestStore(49, (unsigned long )(& A[i]));
    A[i] = i;
    __CrestLoad(52, (unsigned long )(& i), (long long )i);
    __CrestLoad(51, (unsigned long )0, (long long )1);
    __CrestApply2(50, 0, (long long )(i + 1));
    __CrestStore(53, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(47, 23, 0);

  }
  __CrestLoad(54, (unsigned long )0, (long long )0);
  __CrestStore(55, (unsigned long )(& i));
# 33 "table_test.c"
  i = 0;
  __CrestLoad(58, (unsigned long )(& i), (long long )i);
  __CrestLoad(57, (unsigned long )0, (long long )12);
  __CrestApply2(56, 16, (long long )(i < 12));
  if (i < 12) {
    __CrestBranch(59, 27, 1);
    __CrestLoad(61, (unsigned long )0, (long long )0);
    __CrestStore(62, (unsigned long )(& j));
    j = 0;
    {
    {
    __CrestLoad(65, (unsigned long )(& j), (long long )j);
    __CrestLoad(64, (unsigned long )0, (long long )97);
    __CrestApply2(63, 16, (long long )(j < 97));
    if (j < 97) {
      __CrestBranch(66, 30, 1);
      __CrestLoad(70, (unsigned long )(& i), (long long )i);
      __CrestLoad(69, (unsigned long )(& j), (long long )j);
      __CrestApply2(68, 0, (long long )(i + j));
      __CrestStore(71, (unsigned long )(& B[i][j]));
      B[i][j] = (char )(i + j);
      __CrestLoad(74, (unsigned long )(& j), (long long )j);
      __CrestLoad(73, (unsigned long )0, (long long )1);
      __CrestApply2(72, 0, (long long )(j + 1));
      __CrestStore(75, (unsigned long )(& j));
      j ++;
    } else {
      __CrestBranch(67, 31, 0);

    }
    }
    {
    __CrestLoad(78, (unsigned long )(& j), (long long )j);
    __CrestLoad(77, (unsigned long )0, (long long )97);
    __CrestApply2(76, 16, (long long )(j < 97));
    if (j < 97) {
      __CrestBranch(79, 33, 1);
      __CrestLoad(83, (unsigned long )(& i), (long long )i);
      __CrestLoad(82, (unsigned long )(& j), (long long )j);
      __CrestApply2(81, 0, (long long )(i + j));
      __CrestStore(84, (unsigned long )(& B[i][j]));
      B[i][j] = (char )(i + j);
      __CrestLoad(87, (unsigned long )(& j), (long long )j);
      __CrestLoad(86, (unsigned long )0, (long long )1);
      __CrestApply2(85, 0, (long long )(j + 1));
      __CrestStore(88, (unsigned long )(& j));
      j ++;
    } else {
      __CrestBranch(80, 34, 0);

    }
    }
    }
    __CrestLoad(91, (unsigned long )(& i), (long long )i);
    __CrestLoad(90, (unsigned long )0, (long long )1);
    __CrestApply2(89, 0, (long long )(i + 1));
    __CrestStore(92, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(60, 36, 0);

  }
  __CrestLoad(95, (unsigned long )(& i), (long long )i);
  __CrestLoad(94, (unsigned long )0, (long long )12);
  __CrestApply2(93, 16, (long long )(i < 12));
  if (i < 12) {
    __CrestBranch(96, 38, 1);
    __CrestLoad(98, (unsigned long )0, (long long )0);
    __CrestStore(99, (unsigned long )(& j));
    j = 0;
    {
    {
    __CrestLoad(102, (unsigned long )(& j), (long long )j);
    __CrestLoad(101, (unsigned long )0, (long long )97);
    __CrestApply2(100, 16, (long long )(j < 97));
    if (j < 97) {
      __CrestBranch(103, 41, 1);
      __CrestLoad(107, (unsigned long )(& i), (long long )i);
      __CrestLoad(106, (unsigned long )(& j), (long long )j);
      __CrestApply2(105, 0, (long long )(i + j));
      __CrestStore(108, (unsigned long )(& B[i][j]));
      B[i][j] = (char )(i + j);
      __CrestLoad(111, (unsigned long )(& j), (long long )j);
      __CrestLoad(110, (unsigned long )0, (long long )1);
      __CrestApply2(109, 0, (long long )(j + 1));
      __CrestStore(112, (unsigned long )(& j));
      j ++;
    } else {
      __CrestBranch(104, 42, 0);

    }
    }
    {
    __CrestLoad(115, (unsigned long )(& j), (long long )j);
    __CrestLoad(114, (unsigned long )0, (long long )97);
    __CrestApply2(113, 16, (long long )(j < 97));
    if (j < 97) {
      __CrestBranch(116, 44, 1);
      __CrestLoad(120, (unsigned long )(& i), (long long )i);
      __CrestLoad(119, (unsigned long )(& j), (long long )j);
      __CrestApply2(118, 0, (long long )(i + j));
      __CrestStore(121, (unsigned long )(& B[i][j]));
      B[i][j] = (char )(i + j);
      __CrestLoad(124, (unsigned long )(& j), (long long )j);
      __CrestLoad(123, (unsigned long )0, (long long )1);
      __CrestApply2(122, 0, (long long )(j + 1));
      __CrestStore(125, (unsigned long )(& j));
      j ++;
    } else {
      __CrestBranch(117, 45, 0);

    }
    }
    }
    __CrestLoad(128, (unsigned long )(& i), (long long )i);
    __CrestLoad(127, (unsigned long )0, (long long )1);
    __CrestApply2(126, 0, (long long )(i + 1));
    __CrestStore(129, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(97, 47, 0);

  }
  __CrestLoad(132, (unsigned long )(& A[x]), (long long )A[x]);
  __CrestLoad(131, (unsigned long )0, (long long )7);
  __CrestApply2(130, 12, (long long )(A[x] == 7));
# 39 "table_test.c"
  if (A[x] == 7) {
    __CrestBranch(133, 49, 1);
# 44 "table_test.c"
    printf((char const * __restrict )"Hello!\n");
    __CrestClearStack(135);
  } else {
    __CrestBranch(134, 50, 0);

  }
  __CrestLoad(138, (unsigned long )(& B[y][x]), (long long )B[y][x]);
  __CrestLoad(137, (unsigned long )0, (long long )42);
  __CrestApply2(136, 12, (long long )((int )B[y][x] == 42));
# 47 "table_test.c"
  if ((int )B[y][x] == 42) {
    __CrestBranch(139, 52, 1);
# 52 "table_test.c"
    printf((char const * __restrict )"World!\n");
    __CrestClearStack(141);
  } else {
    __CrestBranch(140, 53, 0);

  }
  __CrestLoad(142, (unsigned long )0, (long long )0);
  __CrestStore(143, (unsigned long )(& __retres5));
# 55 "table_test.c"
  __retres5 = 0;
  return_label:
  {
  __CrestLoad(144, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(145);
# 18 "table_test.c"
  return (__retres5);
  }
}
}
void __globinit_table_test(void)
{


  {
  __CrestInit();
}
}
