# 1 "./arrayBinSearch.cil.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./arrayBinSearch.cil.cil.c"
# 3 "arrayBinSearch.c"
void __globinit_arrayBinSearch_cil(void) ;
extern void __CrestHandleReturn(int id , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
# 3 "arrayBinSearch.c"
void __globinit_arrayBinSearch(void) ;
# 4 "arrayBinSearch.c"
extern void __CrestInit(void) __attribute__((__crest_skip__)) ;
# 6 "arrayBinSearch.c"
extern void __CrestReturn(int id ) __attribute__((__crest_skip__)) ;
# 7 "arrayBinSearch.c"
extern void __CrestCall(int id , unsigned int fid ) __attribute__((__crest_skip__)) ;
# 8 "arrayBinSearch.c"
extern void __CrestBranch(int id , int bid , unsigned char b ) __attribute__((__crest_skip__)) ;
# 9 "arrayBinSearch.c"
extern void __CrestApply2(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
# 11 "arrayBinSearch.c"
extern void __CrestClearStack(int id ) __attribute__((__crest_skip__)) ;
# 12 "arrayBinSearch.c"
extern void __CrestStore(int id , unsigned long addr ) __attribute__((__crest_skip__)) ;
# 13 "arrayBinSearch.c"
extern void __CrestLoad(int id , unsigned long addr , long long val ) __attribute__((__crest_skip__)) ;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 15 "arrayBinSearch.c"
void b(int *A , int l , int r , int key ) ;
# 3 "arrayBinSearch.c"
int main(void)
{
  int A[10] ;
  int l ;
  int r ;
  int key ;
  int __retres5 ;

  {
  __globinit_arrayBinSearch_cil();
  __CrestCall(1, 1);
# 12 "arrayBinSearch.c"
  __globinit_arrayBinSearch();
  __CrestClearStack(2);
# 13 "arrayBinSearch.c"
  __CrestCall(1, 1U);
# 10 "arrayBinSearch.c"
  __CrestInt((int *)(& A));
# 11 "arrayBinSearch.c"
  __CrestInt(& l);
# 12 "arrayBinSearch.c"
  __CrestInt(& r);
# 13 "arrayBinSearch.c"
  __CrestInt(& key);
# 14 "arrayBinSearch.c"
  __CrestLoad(2, (unsigned long )(& l), (long long )l);
# 15 "arrayBinSearch.c"
  __CrestLoad(3, (unsigned long )(& r), (long long )r);
# 16 "arrayBinSearch.c"
  __CrestLoad(4, (unsigned long )(& key), (long long )key);
  __CrestLoad(3, (unsigned long )(& l), (long long )l);
  __CrestLoad(4, (unsigned long )(& r), (long long )r);
  __CrestLoad(5, (unsigned long )(& key), (long long )key);
# 15 "arrayBinSearch.c"
  b(A, l, r, key);
  __CrestClearStack(6);
# 16 "arrayBinSearch.c"
  __CrestClearStack(5);
# 17 "arrayBinSearch.c"
  __CrestLoad(6, 0UL, 0LL);
# 18 "arrayBinSearch.c"
  __CrestStore(7, (unsigned long )(& __retres5));
  __CrestLoad(7, (unsigned long )0, (long long )0);
  __CrestStore(8, (unsigned long )(& __retres5));
# 16 "arrayBinSearch.c"
  __retres5 = 0;
# 17 "arrayBinSearch.c"
  __CrestLoad(8, (unsigned long )(& __retres5), (long long )__retres5);
# 18 "arrayBinSearch.c"
  __CrestReturn(9);
  __CrestLoad(9, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(10);
# 3 "arrayBinSearch.c"
  return (__retres5);
}
}
# 20 "arrayBinSearch.c"
void b(int *A , int l , int r , int key )
{
  int m ;
  int *mem_6 ;
  int *mem_7 ;
  int *mem_8 ;
  int *mem_9 ;

  {
  __CrestCall(14, 2);
  __CrestStore(13, (unsigned long )(& key));
  __CrestStore(12, (unsigned long )(& r));
  __CrestStore(11, (unsigned long )(& l));
# 29 "arrayBinSearch.c"
  __CrestCall(13, 2U);
# 30 "arrayBinSearch.c"
  __CrestStore(12, (unsigned long )(& key));
# 31 "arrayBinSearch.c"
  __CrestStore(11, (unsigned long )(& r));
# 32 "arrayBinSearch.c"
  __CrestStore(10, (unsigned long )(& l));
# 35 "arrayBinSearch.c"
  __CrestLoad(16, (unsigned long )(& l), (long long )l);
# 36 "arrayBinSearch.c"
  __CrestLoad(15, (unsigned long )(& r), (long long )r);
# 37 "arrayBinSearch.c"
  __CrestApply2(14, 15, (long long )(l <= r));
  {
  __CrestLoad(17, (unsigned long )(& l), (long long )l);
  __CrestLoad(16, (unsigned long )(& r), (long long )r);
  __CrestApply2(15, 15, (long long )(l <= r));
# 38 "arrayBinSearch.c"
  if (l <= r) {
    __CrestBranch(18, 5, 1);
# 39 "arrayBinSearch.c"
    __CrestBranch(17, 6, (unsigned char)1);
# 40 "arrayBinSearch.c"
    __CrestLoad(25, (unsigned long )(& l), (long long )l);
# 41 "arrayBinSearch.c"
    __CrestLoad(24, (unsigned long )(& r), (long long )r);
# 42 "arrayBinSearch.c"
    __CrestLoad(23, (unsigned long )(& l), (long long )l);
# 43 "arrayBinSearch.c"
    __CrestApply2(22, 1, (long long )(r - l));
# 44 "arrayBinSearch.c"
    __CrestLoad(21, 0UL, 2LL);
# 45 "arrayBinSearch.c"
    __CrestApply2(20, 3, (long long )((r - l) / 2));
# 46 "arrayBinSearch.c"
    __CrestApply2(19, 0, (long long )(l + (r - l) / 2));
# 47 "arrayBinSearch.c"
    __CrestStore(26, (unsigned long )(& m));
    __CrestLoad(26, (unsigned long )(& l), (long long )l);
    __CrestLoad(25, (unsigned long )(& r), (long long )r);
    __CrestLoad(24, (unsigned long )(& l), (long long )l);
    __CrestApply2(23, 1, (long long )(r - l));
    __CrestLoad(22, (unsigned long )0, (long long )2);
    __CrestApply2(21, 3, (long long )((r - l) / 2));
    __CrestApply2(20, 0, (long long )(l + (r - l) / 2));
    __CrestStore(27, (unsigned long )(& m));
# 48 "arrayBinSearch.c"
    m = l + (r - l) / 2;
# 50 "arrayBinSearch.c"
    mem_6 = A + m;
# 52 "arrayBinSearch.c"
    __CrestLoad(29, (unsigned long )mem_6, (long long )*mem_6);
# 53 "arrayBinSearch.c"
    __CrestLoad(28, (unsigned long )(& key), (long long )key);
# 54 "arrayBinSearch.c"
    __CrestApply2(27, 12, (long long )(*mem_6 == key));
    {
    __CrestLoad(30, (unsigned long )mem_6, (long long )*mem_6);
    __CrestLoad(29, (unsigned long )(& key), (long long )key);
    __CrestApply2(28, 12, (long long )(*mem_6 == key));
# 55 "arrayBinSearch.c"
    if (*mem_6 == key) {
      __CrestBranch(31, 7, 1);
# 56 "arrayBinSearch.c"
      __CrestBranch(30, 10, (unsigned char)1);
# 58 "arrayBinSearch.c"
      goto return_label;
    } else {
      __CrestBranch(32, 9, 0);
# 60 "arrayBinSearch.c"
      __CrestBranch(31, 12, (unsigned char)0);
    }
    }
# 66 "arrayBinSearch.c"
    mem_7 = A + m;
# 68 "arrayBinSearch.c"
    __CrestLoad(34, (unsigned long )mem_7, (long long )*mem_7);
# 69 "arrayBinSearch.c"
    __CrestLoad(33, (unsigned long )(& key), (long long )key);
# 70 "arrayBinSearch.c"
    __CrestApply2(32, 16, (long long )(*mem_7 < key));
    {
    __CrestLoad(35, (unsigned long )mem_7, (long long )*mem_7);
    __CrestLoad(34, (unsigned long )(& key), (long long )key);
    __CrestApply2(33, 16, (long long )(*mem_7 < key));
# 71 "arrayBinSearch.c"
    if (*mem_7 < key) {
      __CrestBranch(36, 12, 1);
# 72 "arrayBinSearch.c"
      __CrestBranch(35, 16, (unsigned char)1);
# 73 "arrayBinSearch.c"
      __CrestLoad(39, (unsigned long )(& m), (long long )m);
# 74 "arrayBinSearch.c"
      __CrestLoad(38, 0UL, 1LL);
# 75 "arrayBinSearch.c"
      __CrestApply2(37, 0, (long long )(m + 1));
# 76 "arrayBinSearch.c"
      __CrestStore(40, (unsigned long )(& l));
      __CrestLoad(40, (unsigned long )(& m), (long long )m);
      __CrestLoad(39, (unsigned long )0, (long long )1);
      __CrestApply2(38, 0, (long long )(m + 1));
      __CrestStore(41, (unsigned long )(& l));
# 77 "arrayBinSearch.c"
      l = m + 1;
    } else {
      __CrestBranch(37, 13, 0);
# 79 "arrayBinSearch.c"
      __CrestBranch(36, 17, (unsigned char)0);
# 80 "arrayBinSearch.c"
      __CrestLoad(43, (unsigned long )(& m), (long long )m);
# 81 "arrayBinSearch.c"
      __CrestLoad(42, 0UL, 1LL);
# 82 "arrayBinSearch.c"
      __CrestApply2(41, 1, (long long )(m - 1));
# 83 "arrayBinSearch.c"
      __CrestStore(44, (unsigned long )(& r));
      __CrestLoad(44, (unsigned long )(& m), (long long )m);
      __CrestLoad(43, (unsigned long )0, (long long )1);
      __CrestApply2(42, 1, (long long )(m - 1));
      __CrestStore(45, (unsigned long )(& r));
# 84 "arrayBinSearch.c"
      r = m - 1;
    }
    }
  } else {
    __CrestBranch(19, 14, 0);
# 89 "arrayBinSearch.c"
    __CrestBranch(18, 18, (unsigned char)0);
  }
  }
# 94 "arrayBinSearch.c"
  __CrestLoad(47, (unsigned long )(& l), (long long )l);
# 95 "arrayBinSearch.c"
  __CrestLoad(46, (unsigned long )(& r), (long long )r);
# 96 "arrayBinSearch.c"
  __CrestApply2(45, 15, (long long )(l <= r));
  {
  __CrestLoad(48, (unsigned long )(& l), (long long )l);
  __CrestLoad(47, (unsigned long )(& r), (long long )r);
  __CrestApply2(46, 15, (long long )(l <= r));
# 97 "arrayBinSearch.c"
  if (l <= r) {
    __CrestBranch(49, 17, 1);
# 98 "arrayBinSearch.c"
    __CrestBranch(48, 20, (unsigned char)1);
# 99 "arrayBinSearch.c"
    __CrestLoad(56, (unsigned long )(& l), (long long )l);
# 100 "arrayBinSearch.c"
    __CrestLoad(55, (unsigned long )(& r), (long long )r);
# 101 "arrayBinSearch.c"
    __CrestLoad(54, (unsigned long )(& l), (long long )l);
# 102 "arrayBinSearch.c"
    __CrestApply2(53, 1, (long long )(r - l));
# 103 "arrayBinSearch.c"
    __CrestLoad(52, 0UL, 2LL);
# 104 "arrayBinSearch.c"
    __CrestApply2(51, 3, (long long )((r - l) / 2));
# 105 "arrayBinSearch.c"
    __CrestApply2(50, 0, (long long )(l + (r - l) / 2));
# 106 "arrayBinSearch.c"
    __CrestStore(57, (unsigned long )(& m));
    __CrestLoad(57, (unsigned long )(& l), (long long )l);
    __CrestLoad(56, (unsigned long )(& r), (long long )r);
    __CrestLoad(55, (unsigned long )(& l), (long long )l);
    __CrestApply2(54, 1, (long long )(r - l));
    __CrestLoad(53, (unsigned long )0, (long long )2);
    __CrestApply2(52, 3, (long long )((r - l) / 2));
    __CrestApply2(51, 0, (long long )(l + (r - l) / 2));
    __CrestStore(58, (unsigned long )(& m));
# 107 "arrayBinSearch.c"
    m = l + (r - l) / 2;
# 109 "arrayBinSearch.c"
    mem_8 = A + m;
# 111 "arrayBinSearch.c"
    __CrestLoad(60, (unsigned long )mem_8, (long long )*mem_8);
# 112 "arrayBinSearch.c"
    __CrestLoad(59, (unsigned long )(& key), (long long )key);
# 113 "arrayBinSearch.c"
    __CrestApply2(58, 12, (long long )(*mem_8 == key));
    {
    __CrestLoad(61, (unsigned long )mem_8, (long long )*mem_8);
    __CrestLoad(60, (unsigned long )(& key), (long long )key);
    __CrestApply2(59, 12, (long long )(*mem_8 == key));
# 114 "arrayBinSearch.c"
    if (*mem_8 == key) {
      __CrestBranch(62, 19, 1);
# 115 "arrayBinSearch.c"
      __CrestBranch(61, 24, (unsigned char)1);
# 117 "arrayBinSearch.c"
      goto return_label;
    } else {
      __CrestBranch(63, 21, 0);
# 119 "arrayBinSearch.c"
      __CrestBranch(62, 26, (unsigned char)0);
    }
    }
# 125 "arrayBinSearch.c"
    mem_9 = A + m;
# 127 "arrayBinSearch.c"
    __CrestLoad(65, (unsigned long )mem_9, (long long )*mem_9);
# 128 "arrayBinSearch.c"
    __CrestLoad(64, (unsigned long )(& key), (long long )key);
# 129 "arrayBinSearch.c"
    __CrestApply2(63, 16, (long long )(*mem_9 < key));
    {
    __CrestLoad(66, (unsigned long )mem_9, (long long )*mem_9);
    __CrestLoad(65, (unsigned long )(& key), (long long )key);
    __CrestApply2(64, 16, (long long )(*mem_9 < key));
# 130 "arrayBinSearch.c"
    if (*mem_9 < key) {
      __CrestBranch(67, 24, 1);
# 131 "arrayBinSearch.c"
      __CrestBranch(66, 30, (unsigned char)1);
# 132 "arrayBinSearch.c"
      __CrestLoad(70, (unsigned long )(& m), (long long )m);
# 133 "arrayBinSearch.c"
      __CrestLoad(69, 0UL, 1LL);
# 134 "arrayBinSearch.c"
      __CrestApply2(68, 0, (long long )(m + 1));
# 135 "arrayBinSearch.c"
      __CrestStore(71, (unsigned long )(& l));
      __CrestLoad(71, (unsigned long )(& m), (long long )m);
      __CrestLoad(70, (unsigned long )0, (long long )1);
      __CrestApply2(69, 0, (long long )(m + 1));
      __CrestStore(72, (unsigned long )(& l));
# 136 "arrayBinSearch.c"
      l = m + 1;
    } else {
      __CrestBranch(68, 25, 0);
# 138 "arrayBinSearch.c"
      __CrestBranch(67, 31, (unsigned char)0);
# 139 "arrayBinSearch.c"
      __CrestLoad(74, (unsigned long )(& m), (long long )m);
# 140 "arrayBinSearch.c"
      __CrestLoad(73, 0UL, 1LL);
# 141 "arrayBinSearch.c"
      __CrestApply2(72, 1, (long long )(m - 1));
# 142 "arrayBinSearch.c"
      __CrestStore(75, (unsigned long )(& r));
      __CrestLoad(75, (unsigned long )(& m), (long long )m);
      __CrestLoad(74, (unsigned long )0, (long long )1);
      __CrestApply2(73, 1, (long long )(m - 1));
      __CrestStore(76, (unsigned long )(& r));
# 143 "arrayBinSearch.c"
      r = m - 1;
    }
    }
  } else {
    __CrestBranch(50, 26, 0);
# 148 "arrayBinSearch.c"
    __CrestBranch(49, 32, (unsigned char)0);
  }
  }
  return_label:
# 156 "arrayBinSearch.c"
  __CrestReturn(76);

  {
  __CrestReturn(77);
# 20 "arrayBinSearch.c"
  return;
  }
}
}
# 24 "arrayBinSearch.c"
void __globinit_arrayBinSearch(void)
{


  {
  __CrestCall(78, 3);
# 29 "arrayBinSearch.c"
  __CrestInit();

  {
  __CrestReturn(79);
# 24 "arrayBinSearch.c"
  return;
  }
}
}
void __globinit_arrayBinSearch_cil(void)
{


  {
  __CrestInit();
}
}
