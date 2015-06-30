# 1 "./merge.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./merge.cil.c"
# 4 "merge.c"
void __globinit_merge(void) ;
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
# 10 "merge.c"
void merge(int n1 , int n2 ) ;
# 4 "merge.c"
int main(void)
{
  int n1 ;
  int n2 ;
  int __retres3 ;

  {
  __globinit_merge();
  __CrestCall(1, 1);
# 8 "merge.c"
  __CrestInt(& n1);
# 9 "merge.c"
  __CrestInt(& n2);
  __CrestLoad(2, (unsigned long )(& n1), (long long )n1);
  __CrestLoad(3, (unsigned long )(& n2), (long long )n2);
# 10 "merge.c"
  merge(n1, n2);
  __CrestClearStack(4);
  __CrestLoad(5, (unsigned long )0, (long long )0);
  __CrestStore(6, (unsigned long )(& __retres3));
# 11 "merge.c"
  __retres3 = 0;
  __CrestLoad(7, (unsigned long )(& __retres3), (long long )__retres3);
  __CrestReturn(8);
# 4 "merge.c"
  return (__retres3);
}
}
# 15 "merge.c"
void merge(int n1 , int n2 )
{
  int a[30] ;
  int b[30] ;
  int c[30] ;
  int i ;
  int j ;
  int k ;

  {
  __CrestCall(11, 2);
  __CrestStore(10, (unsigned long )(& n2));
  __CrestStore(9, (unsigned long )(& n1));
  __CrestLoad(12, (unsigned long )0, (long long )0);
  __CrestStore(13, (unsigned long )(& i));
# 19 "merge.c"
  i = 0;
  __CrestLoad(14, (unsigned long )0, (long long )0);
  __CrestStore(15, (unsigned long )(& j));
# 19 "merge.c"
  j = 0;
  __CrestLoad(16, (unsigned long )0, (long long )0);
  __CrestStore(17, (unsigned long )(& k));
# 19 "merge.c"
  k = 0;
  {
  {
  __CrestLoad(20, (unsigned long )(& i), (long long )i);
  __CrestLoad(19, (unsigned long )(& n1), (long long )n1);
  __CrestApply2(18, 16, (long long )(i < n1));
  if (i < n1) {
    __CrestBranch(21, 7, 1);
    {
    __CrestLoad(25, (unsigned long )(& j), (long long )j);
    __CrestLoad(24, (unsigned long )(& n2), (long long )n2);
    __CrestApply2(23, 16, (long long )(j < n2));
    if (j < n2) {
      __CrestBranch(26, 8, 1);
      {
      __CrestLoad(30, (unsigned long )(& a[i]), (long long )a[i]);
      __CrestLoad(29, (unsigned long )(& b[j]), (long long )b[j]);
      __CrestApply2(28, 15, (long long )(a[i] <= b[j]));
      if (a[i] <= b[j]) {
        __CrestBranch(31, 9, 1);
        __CrestLoad(33, (unsigned long )(& a[i]), (long long )a[i]);
        __CrestStore(34, (unsigned long )(& c[k]));
        c[k] = a[i];
        __CrestLoad(37, (unsigned long )(& i), (long long )i);
        __CrestLoad(36, (unsigned long )0, (long long )1);
        __CrestApply2(35, 0, (long long )(i + 1));
        __CrestStore(38, (unsigned long )(& i));
        i ++;
        __CrestLoad(41, (unsigned long )(& k), (long long )k);
        __CrestLoad(40, (unsigned long )0, (long long )1);
        __CrestApply2(39, 0, (long long )(k + 1));
        __CrestStore(42, (unsigned long )(& k));
        k ++;
      } else {
        __CrestBranch(32, 10, 0);
        __CrestLoad(43, (unsigned long )(& b[j]), (long long )b[j]);
        __CrestStore(44, (unsigned long )(& c[k]));
        c[k] = b[j];
        __CrestLoad(47, (unsigned long )(& k), (long long )k);
        __CrestLoad(46, (unsigned long )0, (long long )1);
        __CrestApply2(45, 0, (long long )(k + 1));
        __CrestStore(48, (unsigned long )(& k));
        k ++;
        __CrestLoad(51, (unsigned long )(& j), (long long )j);
        __CrestLoad(50, (unsigned long )0, (long long )1);
        __CrestApply2(49, 0, (long long )(j + 1));
        __CrestStore(52, (unsigned long )(& j));
        j ++;
      }
      }
    } else {
      __CrestBranch(27, 11, 0);

    }
    }
  } else {
    __CrestBranch(22, 12, 0);

  }
  }
  {
  __CrestLoad(55, (unsigned long )(& i), (long long )i);
  __CrestLoad(54, (unsigned long )(& n1), (long long )n1);
  __CrestApply2(53, 16, (long long )(i < n1));
  if (i < n1) {
    __CrestBranch(56, 14, 1);
    {
    __CrestLoad(60, (unsigned long )(& j), (long long )j);
    __CrestLoad(59, (unsigned long )(& n2), (long long )n2);
    __CrestApply2(58, 16, (long long )(j < n2));
    if (j < n2) {
      __CrestBranch(61, 15, 1);
      {
      __CrestLoad(65, (unsigned long )(& a[i]), (long long )a[i]);
      __CrestLoad(64, (unsigned long )(& b[j]), (long long )b[j]);
      __CrestApply2(63, 15, (long long )(a[i] <= b[j]));
      if (a[i] <= b[j]) {
        __CrestBranch(66, 16, 1);
        __CrestLoad(68, (unsigned long )(& a[i]), (long long )a[i]);
        __CrestStore(69, (unsigned long )(& c[k]));
        c[k] = a[i];
        __CrestLoad(72, (unsigned long )(& i), (long long )i);
        __CrestLoad(71, (unsigned long )0, (long long )1);
        __CrestApply2(70, 0, (long long )(i + 1));
        __CrestStore(73, (unsigned long )(& i));
        i ++;
        __CrestLoad(76, (unsigned long )(& k), (long long )k);
        __CrestLoad(75, (unsigned long )0, (long long )1);
        __CrestApply2(74, 0, (long long )(k + 1));
        __CrestStore(77, (unsigned long )(& k));
        k ++;
      } else {
        __CrestBranch(67, 17, 0);
        __CrestLoad(78, (unsigned long )(& b[j]), (long long )b[j]);
        __CrestStore(79, (unsigned long )(& c[k]));
        c[k] = b[j];
        __CrestLoad(82, (unsigned long )(& k), (long long )k);
        __CrestLoad(81, (unsigned long )0, (long long )1);
        __CrestApply2(80, 0, (long long )(k + 1));
        __CrestStore(83, (unsigned long )(& k));
        k ++;
        __CrestLoad(86, (unsigned long )(& j), (long long )j);
        __CrestLoad(85, (unsigned long )0, (long long )1);
        __CrestApply2(84, 0, (long long )(j + 1));
        __CrestStore(87, (unsigned long )(& j));
        j ++;
      }
      }
    } else {
      __CrestBranch(62, 18, 0);

    }
    }
  } else {
    __CrestBranch(57, 19, 0);

  }
  }
  }
  {
  {
  __CrestLoad(90, (unsigned long )(& i), (long long )i);
  __CrestLoad(89, (unsigned long )(& n1), (long long )n1);
  __CrestApply2(88, 16, (long long )(i < n1));
  if (i < n1) {
    __CrestBranch(91, 22, 1);
    __CrestLoad(93, (unsigned long )(& a[i]), (long long )a[i]);
    __CrestStore(94, (unsigned long )(& c[k]));
    c[k] = a[i];
    __CrestLoad(97, (unsigned long )(& i), (long long )i);
    __CrestLoad(96, (unsigned long )0, (long long )1);
    __CrestApply2(95, 0, (long long )(i + 1));
    __CrestStore(98, (unsigned long )(& i));
    i ++;
    __CrestLoad(101, (unsigned long )(& k), (long long )k);
    __CrestLoad(100, (unsigned long )0, (long long )1);
    __CrestApply2(99, 0, (long long )(k + 1));
    __CrestStore(102, (unsigned long )(& k));
    k ++;
  } else {
    __CrestBranch(92, 23, 0);

  }
  }
  {
  __CrestLoad(105, (unsigned long )(& i), (long long )i);
  __CrestLoad(104, (unsigned long )(& n1), (long long )n1);
  __CrestApply2(103, 16, (long long )(i < n1));
  if (i < n1) {
    __CrestBranch(106, 25, 1);
    __CrestLoad(108, (unsigned long )(& a[i]), (long long )a[i]);
    __CrestStore(109, (unsigned long )(& c[k]));
    c[k] = a[i];
    __CrestLoad(112, (unsigned long )(& i), (long long )i);
    __CrestLoad(111, (unsigned long )0, (long long )1);
    __CrestApply2(110, 0, (long long )(i + 1));
    __CrestStore(113, (unsigned long )(& i));
    i ++;
    __CrestLoad(116, (unsigned long )(& k), (long long )k);
    __CrestLoad(115, (unsigned long )0, (long long )1);
    __CrestApply2(114, 0, (long long )(k + 1));
    __CrestStore(117, (unsigned long )(& k));
    k ++;
  } else {
    __CrestBranch(107, 26, 0);

  }
  }
  }
  {
  {
  __CrestLoad(120, (unsigned long )(& j), (long long )j);
  __CrestLoad(119, (unsigned long )(& n2), (long long )n2);
  __CrestApply2(118, 16, (long long )(j < n2));
  if (j < n2) {
    __CrestBranch(121, 29, 1);
    __CrestLoad(123, (unsigned long )(& b[j]), (long long )b[j]);
    __CrestStore(124, (unsigned long )(& c[k]));
    c[k] = b[j];
    __CrestLoad(127, (unsigned long )(& k), (long long )k);
    __CrestLoad(126, (unsigned long )0, (long long )1);
    __CrestApply2(125, 0, (long long )(k + 1));
    __CrestStore(128, (unsigned long )(& k));
    k ++;
    __CrestLoad(131, (unsigned long )(& j), (long long )j);
    __CrestLoad(130, (unsigned long )0, (long long )1);
    __CrestApply2(129, 0, (long long )(j + 1));
    __CrestStore(132, (unsigned long )(& j));
    j ++;
  } else {
    __CrestBranch(122, 30, 0);

  }
  }
  {
  __CrestLoad(135, (unsigned long )(& j), (long long )j);
  __CrestLoad(134, (unsigned long )(& n2), (long long )n2);
  __CrestApply2(133, 16, (long long )(j < n2));
  if (j < n2) {
    __CrestBranch(136, 32, 1);
    __CrestLoad(138, (unsigned long )(& b[j]), (long long )b[j]);
    __CrestStore(139, (unsigned long )(& c[k]));
    c[k] = b[j];
    __CrestLoad(142, (unsigned long )(& k), (long long )k);
    __CrestLoad(141, (unsigned long )0, (long long )1);
    __CrestApply2(140, 0, (long long )(k + 1));
    __CrestStore(143, (unsigned long )(& k));
    k ++;
    __CrestLoad(146, (unsigned long )(& j), (long long )j);
    __CrestLoad(145, (unsigned long )0, (long long )1);
    __CrestApply2(144, 0, (long long )(j + 1));
    __CrestStore(147, (unsigned long )(& j));
    j ++;
  } else {
    __CrestBranch(137, 33, 0);

  }
  }
  }

  {
  __CrestReturn(148);
# 15 "merge.c"
  return;
  }
}
}
void __globinit_merge(void)
{


  {
  __CrestInit();
}
}
