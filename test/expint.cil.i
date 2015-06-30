# 1 "./expint.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./expint.cil.c"
# 32 "expint.c"
void __globinit_expint(void) ;
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
# 28 "expint.c"
int expint(int n , int x ) ;
# 32 "expint.c"
void main(void)
{
  int n ;
  int x ;

  {
  __globinit_expint();
  __CrestCall(1, 1);
# 37 "expint.c"
  __CrestInt(& x);
# 38 "expint.c"
  __CrestInt(& n);
  __CrestLoad(2, (unsigned long )(& x), (long long )x);
  __CrestLoad(3, (unsigned long )(& n), (long long )n);
# 40 "expint.c"
  expint(x, n);
  __CrestClearStack(4);
  __CrestReturn(5);
# 32 "expint.c"
  return;
}
}
# 50 "expint.c"
int foo(int x )
{
  int __retres2 ;

  {
  __CrestCall(7, 2);
  __CrestStore(6, (unsigned long )(& x));
  __CrestLoad(18, (unsigned long )(& x), (long long )x);
  __CrestLoad(17, (unsigned long )(& x), (long long )x);
  __CrestApply2(16, 2, (long long )(x * x));
  __CrestLoad(15, (unsigned long )0, (long long )8);
  __CrestLoad(14, (unsigned long )(& x), (long long )x);
  __CrestApply2(13, 2, (long long )(8 * x));
  __CrestApply2(12, 0, (long long )(x * x + 8 * x));
  __CrestLoad(11, (unsigned long )0, (long long )4);
  __CrestLoad(10, (unsigned long )(& x), (long long )x);
  __CrestApply2(9, 1, (long long )(4 - x));
  __CrestApply2(8, 8, (long long )((x * x + 8 * x) << (4 - x)));
  __CrestStore(19, (unsigned long )(& __retres2));
# 54 "expint.c"
  __retres2 = (x * x + 8 * x) << (4 - x);
  {
  __CrestLoad(20, (unsigned long )(& __retres2), (long long )__retres2);
  __CrestReturn(21);
# 50 "expint.c"
  return (__retres2);
  }
}
}
# 66 "expint.c"
int expint(int n , int x )
{
  int i ;
  int ii ;
  int nm1 ;
  int a ;
  int b ;
  int c ;
  int d ;
  int del ;
  int fact ;
  int h ;
  int psi ;
  int ans ;
  int tmp ;
  int __retres16 ;

  {
  __CrestCall(24, 3);
  __CrestStore(23, (unsigned long )(& x));
  __CrestStore(22, (unsigned long )(& n));
  __CrestLoad(27, (unsigned long )(& n), (long long )n);
  __CrestLoad(26, (unsigned long )0, (long long )1);
  __CrestApply2(25, 1, (long long )(n - 1));
  __CrestStore(28, (unsigned long )(& nm1));
# 76 "expint.c"
  nm1 = n - 1;
  {
  __CrestLoad(31, (unsigned long )(& x), (long long )x);
  __CrestLoad(30, (unsigned long )0, (long long )1);
  __CrestApply2(29, 14, (long long )(x > 1));
# 80 "expint.c"
  if (x > 1) {
    __CrestBranch(32, 8, 1);
    __CrestLoad(36, (unsigned long )(& x), (long long )x);
    __CrestLoad(35, (unsigned long )(& n), (long long )n);
    __CrestApply2(34, 0, (long long )(x + n));
    __CrestStore(37, (unsigned long )(& b));
# 84 "expint.c"
    b = x + n;
    __CrestLoad(38, (unsigned long )0, (long long )((int )2e6));
    __CrestStore(39, (unsigned long )(& c));
# 86 "expint.c"
    c = (int )2e6;
    __CrestLoad(40, (unsigned long )0, (long long )((int )3e7));
    __CrestStore(41, (unsigned long )(& d));
# 88 "expint.c"
    d = (int )3e7;
    __CrestLoad(42, (unsigned long )(& d), (long long )d);
    __CrestStore(43, (unsigned long )(& h));
# 90 "expint.c"
    h = d;
    __CrestLoad(44, (unsigned long )0, (long long )1);
    __CrestStore(45, (unsigned long )(& i));
# 94 "expint.c"
    i = 1;
    {
    {
    __CrestLoad(48, (unsigned long )(& i), (long long )i);
    __CrestLoad(47, (unsigned long )0, (long long )100);
    __CrestApply2(46, 15, (long long )(i <= 100));
    if (i <= 100) {
      __CrestBranch(49, 11, 1);
      __CrestLoad(56, (unsigned long )(& i), (long long )i);
      __CrestApply1(55, 19, (long long )(- i));
      __CrestLoad(54, (unsigned long )(& nm1), (long long )nm1);
      __CrestLoad(53, (unsigned long )(& i), (long long )i);
      __CrestApply2(52, 0, (long long )(nm1 + i));
      __CrestApply2(51, 2, (long long )(- i * (nm1 + i)));
      __CrestStore(57, (unsigned long )(& a));
      a = - i * (nm1 + i);
      __CrestLoad(60, (unsigned long )(& b), (long long )b);
      __CrestLoad(59, (unsigned long )0, (long long )2);
      __CrestApply2(58, 0, (long long )(b + 2));
      __CrestStore(61, (unsigned long )(& b));
      b += 2;
      __CrestLoad(68, (unsigned long )0, (long long )10);
      __CrestLoad(67, (unsigned long )(& a), (long long )a);
      __CrestLoad(66, (unsigned long )(& d), (long long )d);
      __CrestApply2(65, 2, (long long )(a * d));
      __CrestLoad(64, (unsigned long )(& b), (long long )b);
      __CrestApply2(63, 0, (long long )(a * d + b));
      __CrestApply2(62, 2, (long long )(10 * (a * d + b)));
      __CrestStore(69, (unsigned long )(& d));
      d = 10 * (a * d + b);
      __CrestLoad(74, (unsigned long )(& b), (long long )b);
      __CrestLoad(73, (unsigned long )(& a), (long long )a);
      __CrestLoad(72, (unsigned long )(& c), (long long )c);
      __CrestApply2(71, 3, (long long )(a / c));
      __CrestApply2(70, 0, (long long )(b + a / c));
      __CrestStore(75, (unsigned long )(& c));
      c = b + a / c;
      __CrestLoad(78, (unsigned long )(& c), (long long )c);
      __CrestLoad(77, (unsigned long )(& d), (long long )d);
      __CrestApply2(76, 2, (long long )(c * d));
      __CrestStore(79, (unsigned long )(& del));
      del = c * d;
      __CrestLoad(82, (unsigned long )(& h), (long long )h);
      __CrestLoad(81, (unsigned long )(& del), (long long )del);
      __CrestApply2(80, 2, (long long )(h * del));
      __CrestStore(83, (unsigned long )(& h));
      h *= del;
      {
      __CrestLoad(86, (unsigned long )(& del), (long long )del);
      __CrestLoad(85, (unsigned long )0, (long long )10000);
      __CrestApply2(84, 16, (long long )(del < 10000));
      if (del < 10000) {
        __CrestBranch(87, 13, 1);
        __CrestLoad(92, (unsigned long )(& h), (long long )h);
        __CrestLoad(91, (unsigned long )(& x), (long long )x);
        __CrestApply1(90, 19, (long long )(- x));
        __CrestApply2(89, 2, (long long )(h * - x));
        __CrestStore(93, (unsigned long )(& ans));
        ans = h * - x;
        __CrestLoad(94, (unsigned long )(& ans), (long long )ans);
        __CrestStore(95, (unsigned long )(& __retres16));
        __retres16 = ans;
        goto return_label;
      } else {
        __CrestBranch(88, 16, 0);

      }
      }
      __CrestLoad(98, (unsigned long )(& i), (long long )i);
      __CrestLoad(97, (unsigned long )0, (long long )1);
      __CrestApply2(96, 0, (long long )(i + 1));
      __CrestStore(99, (unsigned long )(& i));
      i ++;
    } else {
      __CrestBranch(50, 18, 0);

    }
    }
    {
    __CrestLoad(102, (unsigned long )(& i), (long long )i);
    __CrestLoad(101, (unsigned long )0, (long long )100);
    __CrestApply2(100, 15, (long long )(i <= 100));
    if (i <= 100) {
      __CrestBranch(103, 20, 1);
      __CrestLoad(110, (unsigned long )(& i), (long long )i);
      __CrestApply1(109, 19, (long long )(- i));
      __CrestLoad(108, (unsigned long )(& nm1), (long long )nm1);
      __CrestLoad(107, (unsigned long )(& i), (long long )i);
      __CrestApply2(106, 0, (long long )(nm1 + i));
      __CrestApply2(105, 2, (long long )(- i * (nm1 + i)));
      __CrestStore(111, (unsigned long )(& a));
      a = - i * (nm1 + i);
      __CrestLoad(114, (unsigned long )(& b), (long long )b);
      __CrestLoad(113, (unsigned long )0, (long long )2);
      __CrestApply2(112, 0, (long long )(b + 2));
      __CrestStore(115, (unsigned long )(& b));
      b += 2;
      __CrestLoad(122, (unsigned long )0, (long long )10);
      __CrestLoad(121, (unsigned long )(& a), (long long )a);
      __CrestLoad(120, (unsigned long )(& d), (long long )d);
      __CrestApply2(119, 2, (long long )(a * d));
      __CrestLoad(118, (unsigned long )(& b), (long long )b);
      __CrestApply2(117, 0, (long long )(a * d + b));
      __CrestApply2(116, 2, (long long )(10 * (a * d + b)));
      __CrestStore(123, (unsigned long )(& d));
      d = 10 * (a * d + b);
      __CrestLoad(128, (unsigned long )(& b), (long long )b);
      __CrestLoad(127, (unsigned long )(& a), (long long )a);
      __CrestLoad(126, (unsigned long )(& c), (long long )c);
      __CrestApply2(125, 3, (long long )(a / c));
      __CrestApply2(124, 0, (long long )(b + a / c));
      __CrestStore(129, (unsigned long )(& c));
      c = b + a / c;
      __CrestLoad(132, (unsigned long )(& c), (long long )c);
      __CrestLoad(131, (unsigned long )(& d), (long long )d);
      __CrestApply2(130, 2, (long long )(c * d));
      __CrestStore(133, (unsigned long )(& del));
      del = c * d;
      __CrestLoad(136, (unsigned long )(& h), (long long )h);
      __CrestLoad(135, (unsigned long )(& del), (long long )del);
      __CrestApply2(134, 2, (long long )(h * del));
      __CrestStore(137, (unsigned long )(& h));
      h *= del;
      {
      __CrestLoad(140, (unsigned long )(& del), (long long )del);
      __CrestLoad(139, (unsigned long )0, (long long )10000);
      __CrestApply2(138, 16, (long long )(del < 10000));
      if (del < 10000) {
        __CrestBranch(141, 22, 1);
        __CrestLoad(146, (unsigned long )(& h), (long long )h);
        __CrestLoad(145, (unsigned long )(& x), (long long )x);
        __CrestApply1(144, 19, (long long )(- x));
        __CrestApply2(143, 2, (long long )(h * - x));
        __CrestStore(147, (unsigned long )(& ans));
        ans = h * - x;
        __CrestLoad(148, (unsigned long )(& ans), (long long )ans);
        __CrestStore(149, (unsigned long )(& __retres16));
        __retres16 = ans;
        goto return_label;
      } else {
        __CrestBranch(142, 25, 0);

      }
      }
      __CrestLoad(152, (unsigned long )(& i), (long long )i);
      __CrestLoad(151, (unsigned long )0, (long long )1);
      __CrestApply2(150, 0, (long long )(i + 1));
      __CrestStore(153, (unsigned long )(& i));
      i ++;
    } else {
      __CrestBranch(104, 27, 0);

    }
    }
    }
  } else {
    __CrestBranch(33, 28, 0);
    {
    __CrestLoad(156, (unsigned long )(& nm1), (long long )nm1);
    __CrestLoad(155, (unsigned long )0, (long long )0);
    __CrestApply2(154, 13, (long long )(nm1 != 0));
# 132 "expint.c"
    if (nm1 != 0) {
      __CrestBranch(157, 29, 1);
      __CrestLoad(159, (unsigned long )0, (long long )2);
      __CrestStore(160, (unsigned long )(& ans));
# 132 "expint.c"
      ans = 2;
    } else {
      __CrestBranch(158, 30, 0);
      __CrestLoad(161, (unsigned long )0, (long long )1000);
      __CrestStore(162, (unsigned long )(& ans));
# 132 "expint.c"
      ans = 1000;
    }
    }
    __CrestLoad(163, (unsigned long )0, (long long )1);
    __CrestStore(164, (unsigned long )(& fact));
# 134 "expint.c"
    fact = 1;
    __CrestLoad(165, (unsigned long )0, (long long )1);
    __CrestStore(166, (unsigned long )(& i));
# 136 "expint.c"
    i = 1;
    {
    {
    __CrestLoad(169, (unsigned long )(& i), (long long )i);
    __CrestLoad(168, (unsigned long )0, (long long )100);
    __CrestApply2(167, 15, (long long )(i <= 100));
    if (i <= 100) {
      __CrestBranch(170, 34, 1);
      __CrestLoad(177, (unsigned long )(& fact), (long long )fact);
      __CrestLoad(176, (unsigned long )(& x), (long long )x);
      __CrestApply1(175, 19, (long long )(- x));
      __CrestLoad(174, (unsigned long )(& i), (long long )i);
      __CrestApply2(173, 3, (long long )(- x / i));
      __CrestApply2(172, 2, (long long )(fact * (- x / i)));
      __CrestStore(178, (unsigned long )(& fact));
      fact *= - x / i;
      {
      __CrestLoad(181, (unsigned long )(& i), (long long )i);
      __CrestLoad(180, (unsigned long )(& nm1), (long long )nm1);
      __CrestApply2(179, 13, (long long )(i != nm1));
      if (i != nm1) {
        __CrestBranch(182, 36, 1);
        __CrestLoad(189, (unsigned long )(& fact), (long long )fact);
        __CrestApply1(188, 19, (long long )(- fact));
        __CrestLoad(187, (unsigned long )(& i), (long long )i);
        __CrestLoad(186, (unsigned long )(& nm1), (long long )nm1);
        __CrestApply2(185, 1, (long long )(i - nm1));
        __CrestApply2(184, 3, (long long )(- fact / (i - nm1)));
        __CrestStore(190, (unsigned long )(& del));
        del = - fact / (i - nm1);
      } else {
        __CrestBranch(183, 37, 0);
        __CrestLoad(191, (unsigned long )0, (long long )255);
        __CrestStore(192, (unsigned long )(& psi));
        psi = 255;
        __CrestLoad(193, (unsigned long )0, (long long )1);
        __CrestStore(194, (unsigned long )(& ii));
        ii = 1;
        {
        {
        __CrestLoad(197, (unsigned long )(& ii), (long long )ii);
        __CrestLoad(196, (unsigned long )(& nm1), (long long )nm1);
        __CrestApply2(195, 15, (long long )(ii <= nm1));
        if (ii <= nm1) {
          __CrestBranch(198, 40, 1);
          __CrestLoad(204, (unsigned long )(& psi), (long long )psi);
          __CrestLoad(203, (unsigned long )(& ii), (long long )ii);
          __CrestLoad(202, (unsigned long )(& nm1), (long long )nm1);
          __CrestApply2(201, 0, (long long )(ii + nm1));
          __CrestApply2(200, 0, (long long )(psi + (ii + nm1)));
          __CrestStore(205, (unsigned long )(& psi));
          psi += ii + nm1;
          __CrestLoad(208, (unsigned long )(& ii), (long long )ii);
          __CrestLoad(207, (unsigned long )0, (long long )1);
          __CrestApply2(206, 0, (long long )(ii + 1));
          __CrestStore(209, (unsigned long )(& ii));
          ii ++;
        } else {
          __CrestBranch(199, 41, 0);

        }
        }
        {
        __CrestLoad(212, (unsigned long )(& ii), (long long )ii);
        __CrestLoad(211, (unsigned long )(& nm1), (long long )nm1);
        __CrestApply2(210, 15, (long long )(ii <= nm1));
        if (ii <= nm1) {
          __CrestBranch(213, 43, 1);
          __CrestLoad(219, (unsigned long )(& psi), (long long )psi);
          __CrestLoad(218, (unsigned long )(& ii), (long long )ii);
          __CrestLoad(217, (unsigned long )(& nm1), (long long )nm1);
          __CrestApply2(216, 0, (long long )(ii + nm1));
          __CrestApply2(215, 0, (long long )(psi + (ii + nm1)));
          __CrestStore(220, (unsigned long )(& psi));
          psi += ii + nm1;
          __CrestLoad(223, (unsigned long )(& ii), (long long )ii);
          __CrestLoad(222, (unsigned long )0, (long long )1);
          __CrestApply2(221, 0, (long long )(ii + 1));
          __CrestStore(224, (unsigned long )(& ii));
          ii ++;
        } else {
          __CrestBranch(214, 44, 0);

        }
        }
        }
        __CrestLoad(225, (unsigned long )(& x), (long long )x);
        tmp = foo(x);
        __CrestHandleReturn(227, (long long )tmp);
        __CrestStore(226, (unsigned long )(& tmp));
        __CrestLoad(232, (unsigned long )(& psi), (long long )psi);
        __CrestLoad(231, (unsigned long )(& fact), (long long )fact);
        __CrestLoad(230, (unsigned long )(& tmp), (long long )tmp);
        __CrestApply2(229, 2, (long long )(fact * tmp));
        __CrestApply2(228, 0, (long long )(psi + fact * tmp));
        __CrestStore(233, (unsigned long )(& del));
        del = psi + fact * tmp;
      }
      }
      __CrestLoad(236, (unsigned long )(& ans), (long long )ans);
      __CrestLoad(235, (unsigned long )(& del), (long long )del);
      __CrestApply2(234, 0, (long long )(ans + del));
      __CrestStore(237, (unsigned long )(& ans));
      ans += del;
      __CrestLoad(240, (unsigned long )(& i), (long long )i);
      __CrestLoad(239, (unsigned long )0, (long long )1);
      __CrestApply2(238, 0, (long long )(i + 1));
      __CrestStore(241, (unsigned long )(& i));
      i ++;
    } else {
      __CrestBranch(171, 47, 0);

    }
    }
    {
    __CrestLoad(244, (unsigned long )(& i), (long long )i);
    __CrestLoad(243, (unsigned long )0, (long long )100);
    __CrestApply2(242, 15, (long long )(i <= 100));
    if (i <= 100) {
      __CrestBranch(245, 49, 1);
      __CrestLoad(252, (unsigned long )(& fact), (long long )fact);
      __CrestLoad(251, (unsigned long )(& x), (long long )x);
      __CrestApply1(250, 19, (long long )(- x));
      __CrestLoad(249, (unsigned long )(& i), (long long )i);
      __CrestApply2(248, 3, (long long )(- x / i));
      __CrestApply2(247, 2, (long long )(fact * (- x / i)));
      __CrestStore(253, (unsigned long )(& fact));
      fact *= - x / i;
      {
      __CrestLoad(256, (unsigned long )(& i), (long long )i);
      __CrestLoad(255, (unsigned long )(& nm1), (long long )nm1);
      __CrestApply2(254, 13, (long long )(i != nm1));
      if (i != nm1) {
        __CrestBranch(257, 51, 1);
        __CrestLoad(264, (unsigned long )(& fact), (long long )fact);
        __CrestApply1(263, 19, (long long )(- fact));
        __CrestLoad(262, (unsigned long )(& i), (long long )i);
        __CrestLoad(261, (unsigned long )(& nm1), (long long )nm1);
        __CrestApply2(260, 1, (long long )(i - nm1));
        __CrestApply2(259, 3, (long long )(- fact / (i - nm1)));
        __CrestStore(265, (unsigned long )(& del));
        del = - fact / (i - nm1);
      } else {
        __CrestBranch(258, 52, 0);
        __CrestLoad(266, (unsigned long )0, (long long )255);
        __CrestStore(267, (unsigned long )(& psi));
        psi = 255;
        __CrestLoad(268, (unsigned long )0, (long long )1);
        __CrestStore(269, (unsigned long )(& ii));
        ii = 1;
        {
        {
        __CrestLoad(272, (unsigned long )(& ii), (long long )ii);
        __CrestLoad(271, (unsigned long )(& nm1), (long long )nm1);
        __CrestApply2(270, 15, (long long )(ii <= nm1));
        if (ii <= nm1) {
          __CrestBranch(273, 55, 1);
          __CrestLoad(279, (unsigned long )(& psi), (long long )psi);
          __CrestLoad(278, (unsigned long )(& ii), (long long )ii);
          __CrestLoad(277, (unsigned long )(& nm1), (long long )nm1);
          __CrestApply2(276, 0, (long long )(ii + nm1));
          __CrestApply2(275, 0, (long long )(psi + (ii + nm1)));
          __CrestStore(280, (unsigned long )(& psi));
          psi += ii + nm1;
          __CrestLoad(283, (unsigned long )(& ii), (long long )ii);
          __CrestLoad(282, (unsigned long )0, (long long )1);
          __CrestApply2(281, 0, (long long )(ii + 1));
          __CrestStore(284, (unsigned long )(& ii));
          ii ++;
        } else {
          __CrestBranch(274, 56, 0);

        }
        }
        {
        __CrestLoad(287, (unsigned long )(& ii), (long long )ii);
        __CrestLoad(286, (unsigned long )(& nm1), (long long )nm1);
        __CrestApply2(285, 15, (long long )(ii <= nm1));
        if (ii <= nm1) {
          __CrestBranch(288, 58, 1);
          __CrestLoad(294, (unsigned long )(& psi), (long long )psi);
          __CrestLoad(293, (unsigned long )(& ii), (long long )ii);
          __CrestLoad(292, (unsigned long )(& nm1), (long long )nm1);
          __CrestApply2(291, 0, (long long )(ii + nm1));
          __CrestApply2(290, 0, (long long )(psi + (ii + nm1)));
          __CrestStore(295, (unsigned long )(& psi));
          psi += ii + nm1;
          __CrestLoad(298, (unsigned long )(& ii), (long long )ii);
          __CrestLoad(297, (unsigned long )0, (long long )1);
          __CrestApply2(296, 0, (long long )(ii + 1));
          __CrestStore(299, (unsigned long )(& ii));
          ii ++;
        } else {
          __CrestBranch(289, 59, 0);

        }
        }
        }
        __CrestLoad(300, (unsigned long )(& x), (long long )x);
        tmp = foo(x);
        __CrestHandleReturn(302, (long long )tmp);
        __CrestStore(301, (unsigned long )(& tmp));
        __CrestLoad(307, (unsigned long )(& psi), (long long )psi);
        __CrestLoad(306, (unsigned long )(& fact), (long long )fact);
        __CrestLoad(305, (unsigned long )(& tmp), (long long )tmp);
        __CrestApply2(304, 2, (long long )(fact * tmp));
        __CrestApply2(303, 0, (long long )(psi + fact * tmp));
        __CrestStore(308, (unsigned long )(& del));
        del = psi + fact * tmp;
      }
      }
      __CrestLoad(311, (unsigned long )(& ans), (long long )ans);
      __CrestLoad(310, (unsigned long )(& del), (long long )del);
      __CrestApply2(309, 0, (long long )(ans + del));
      __CrestStore(312, (unsigned long )(& ans));
      ans += del;
      __CrestLoad(315, (unsigned long )(& i), (long long )i);
      __CrestLoad(314, (unsigned long )0, (long long )1);
      __CrestApply2(313, 0, (long long )(i + 1));
      __CrestStore(316, (unsigned long )(& i));
      i ++;
    } else {
      __CrestBranch(246, 62, 0);

    }
    }
    }
  }
  }
  __CrestLoad(317, (unsigned long )(& ans), (long long )ans);
  __CrestStore(318, (unsigned long )(& __retres16));
# 170 "expint.c"
  __retres16 = ans;
  return_label:
  {
  __CrestLoad(319, (unsigned long )(& __retres16), (long long )__retres16);
  __CrestReturn(320);
# 66 "expint.c"
  return (__retres16);
  }
}
}
void __globinit_expint(void)
{


  {
  __CrestInit();
}
}
