/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is true */

#line 133 "tcas.c"
void __globinit_tcas(void) ;
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
#line 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
typedef unsigned long size_t;
#line 131 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off_t;
#line 132 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off64_t;
#line 44 "/usr/include/stdio.h"
struct _IO_FILE;
#line 44
struct _IO_FILE;
#line 48 "/usr/include/stdio.h"
typedef struct _IO_FILE FILE;
#line 144 "/usr/include/libio.h"
struct _IO_FILE;
#line 154 "/usr/include/libio.h"
typedef void _IO_lock_t;
#line 160 "/usr/include/libio.h"
struct _IO_marker {
   struct _IO_marker *_next ;
   struct _IO_FILE *_sbuf ;
   int _pos ;
};
#line 245 "/usr/include/libio.h"
struct _IO_FILE {
   int _flags ;
   char *_IO_read_ptr ;
   char *_IO_read_end ;
   char *_IO_read_base ;
   char *_IO_write_base ;
   char *_IO_write_ptr ;
   char *_IO_write_end ;
   char *_IO_buf_base ;
   char *_IO_buf_end ;
   char *_IO_save_base ;
   char *_IO_backup_base ;
   char *_IO_save_end ;
   struct _IO_marker *_markers ;
   struct _IO_FILE *_chain ;
   int _fileno ;
   int _flags2 ;
   __off_t _old_offset ;
   unsigned short _cur_column ;
   signed char _vtable_offset ;
   char _shortbuf[1] ;
   _IO_lock_t *_lock ;
   __off64_t _offset ;
   void *__pad1 ;
   void *__pad2 ;
   void *__pad3 ;
   void *__pad4 ;
   size_t __pad5 ;
   int _mode ;
   char _unused2[(15UL * sizeof(int ) - 4UL * sizeof(void *)) - sizeof(size_t )] ;
};
#line 169 "/usr/include/stdio.h"
extern struct _IO_FILE *stdout ;
#line 356
extern int fprintf(FILE * __restrict  __stream , char const   * __restrict  __format 
                   , ...) ;
#line 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x )  __attribute__((__crest_skip__)) ;
#line 14 "tcas.c"
int Cur_Vertical_Sep  ;
#line 15 "tcas.c"
int High_Confidence  ;
#line 16 "tcas.c"
int Two_of_Three_Reports_Valid  ;
#line 17 "tcas.c"
int Own_Tracked_Alt  ;
#line 18 "tcas.c"
int Own_Tracked_Alt_Rate  ;
#line 19 "tcas.c"
int Other_Tracked_Alt  ;
#line 20 "tcas.c"
int Alt_Layer_Value  ;
#line 21 "tcas.c"
int Positive_RA_Alt_Thresh[4]  ;
#line 22 "tcas.c"
int Up_Separation  ;
#line 23 "tcas.c"
int Down_Separation  ;
#line 26 "tcas.c"
int Other_RAC  ;
#line 30 "tcas.c"
int Other_Capability  ;
#line 33 "tcas.c"
int Climb_Inhibit  ;
#line 37 "tcas.c"
void initialize(void) 
{ 


  {
  __CrestCall(1, 1);

  __CrestLoad(2, (unsigned long )0, (long long )400);
  __CrestStore(3, (unsigned long )(& Positive_RA_Alt_Thresh[0]));
#line 39
  Positive_RA_Alt_Thresh[0] = 400;
  __CrestLoad(4, (unsigned long )0, (long long )500);
  __CrestStore(5, (unsigned long )(& Positive_RA_Alt_Thresh[1]));
#line 40
  Positive_RA_Alt_Thresh[1] = 500;
  __CrestLoad(6, (unsigned long )0, (long long )640);
  __CrestStore(7, (unsigned long )(& Positive_RA_Alt_Thresh[2]));
#line 41
  Positive_RA_Alt_Thresh[2] = 640;
  __CrestLoad(8, (unsigned long )0, (long long )740);
  __CrestStore(9, (unsigned long )(& Positive_RA_Alt_Thresh[3]));
#line 42
  Positive_RA_Alt_Thresh[3] = 740;

  {
  __CrestReturn(10);
#line 37
  return;
  }
}
}
#line 44 "tcas.c"
int ALIM(void) 
{ 
  int __retres1 ;

  {
  __CrestCall(11, 2);

  __CrestLoad(12, (unsigned long )(& Positive_RA_Alt_Thresh[Alt_Layer_Value]), (long long )Positive_RA_Alt_Thresh[Alt_Layer_Value]);
  __CrestStore(13, (unsigned long )(& __retres1));
#line 46
  __retres1 = Positive_RA_Alt_Thresh[Alt_Layer_Value];
  {
  __CrestLoad(14, (unsigned long )(& __retres1), (long long )__retres1);
  __CrestReturn(15);
#line 44
  return (__retres1);
  }
}
}
#line 48 "tcas.c"
int Inhibit_Biased_Climb(void) 
{ 
  int tmp ;

  {
  __CrestCall(16, 3);

  {
  __CrestLoad(19, (unsigned long )(& Climb_Inhibit), (long long )Climb_Inhibit);
  __CrestLoad(18, (unsigned long )0, (long long )0);
  __CrestApply2(17, 13, (long long )(Climb_Inhibit != 0));
#line 50
  if (Climb_Inhibit != 0) {
    __CrestBranch(20, 7, 1);
    __CrestLoad(24, (unsigned long )(& Up_Separation), (long long )Up_Separation);
    __CrestLoad(23, (unsigned long )0, (long long )100);
    __CrestApply2(22, 0, (long long )(Up_Separation + 100));
    __CrestStore(25, (unsigned long )(& tmp));
#line 50
    tmp = Up_Separation + 100;
  } else {
    __CrestBranch(21, 8, 0);
    __CrestLoad(26, (unsigned long )(& Up_Separation), (long long )Up_Separation);
    __CrestStore(27, (unsigned long )(& tmp));
#line 50
    tmp = Up_Separation;
  }
  }
  {
  __CrestLoad(28, (unsigned long )(& tmp), (long long )tmp);
  __CrestReturn(29);
#line 50
  return (tmp);
  }
}
}
#line 62
int Own_Below_Threat(void) ;
#line 52 "tcas.c"
int Non_Crossing_Biased_Climb(void) 
{ 
  int upward_preferred ;
  int result ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;

  {
  __CrestCall(30, 4);

#line 59
  tmp = Inhibit_Biased_Climb();
  __CrestHandleReturn(32, (long long )tmp);
  __CrestStore(31, (unsigned long )(& tmp));
  __CrestLoad(35, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(34, (unsigned long )(& Down_Separation), (long long )Down_Separation);
  __CrestApply2(33, 14, (long long )(tmp > Down_Separation));
  __CrestStore(36, (unsigned long )(& upward_preferred));
#line 59
  upward_preferred = tmp > Down_Separation;
  {
  __CrestLoad(39, (unsigned long )(& upward_preferred), (long long )upward_preferred);
  __CrestLoad(38, (unsigned long )0, (long long )0);
  __CrestApply2(37, 13, (long long )(upward_preferred != 0));
#line 60
  if (upward_preferred != 0) {
    __CrestBranch(40, 12, 1);
#line 62
    tmp___0 = Own_Below_Threat();
    __CrestHandleReturn(43, (long long )tmp___0);
    __CrestStore(42, (unsigned long )(& tmp___0));
    {
    __CrestLoad(46, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestLoad(45, (unsigned long )0, (long long )0);
    __CrestApply2(44, 13, (long long )(tmp___0 != 0));
#line 62
    if (tmp___0 != 0) {
      __CrestBranch(47, 14, 1);
#line 62
      tmp___1 = Own_Below_Threat();
      __CrestHandleReturn(50, (long long )tmp___1);
      __CrestStore(49, (unsigned long )(& tmp___1));
      {
      __CrestLoad(53, (unsigned long )(& tmp___1), (long long )tmp___1);
      __CrestLoad(52, (unsigned long )0, (long long )0);
      __CrestApply2(51, 13, (long long )(tmp___1 != 0));
#line 62
      if (tmp___1 != 0) {
        __CrestBranch(54, 16, 1);
#line 62
        tmp___2 = ALIM();
        __CrestHandleReturn(57, (long long )tmp___2);
        __CrestStore(56, (unsigned long )(& tmp___2));
        {
        __CrestLoad(60, (unsigned long )(& Down_Separation), (long long )Down_Separation);
        __CrestLoad(59, (unsigned long )(& tmp___2), (long long )tmp___2);
        __CrestApply2(58, 17, (long long )(Down_Separation >= tmp___2));
#line 62
        if (Down_Separation >= tmp___2) {
          __CrestBranch(61, 18, 1);
          __CrestLoad(63, (unsigned long )0, (long long )0);
          __CrestStore(64, (unsigned long )(& tmp___3));
#line 62
          tmp___3 = 0;
        } else {
          __CrestBranch(62, 19, 0);
          __CrestLoad(65, (unsigned long )0, (long long )1);
          __CrestStore(66, (unsigned long )(& tmp___3));
#line 62
          tmp___3 = 1;
        }
        }
      } else {
        __CrestBranch(55, 20, 0);
        __CrestLoad(67, (unsigned long )0, (long long )0);
        __CrestStore(68, (unsigned long )(& tmp___3));
#line 62
        tmp___3 = 0;
      }
      }
    } else {
      __CrestBranch(48, 21, 0);
      __CrestLoad(69, (unsigned long )0, (long long )1);
      __CrestStore(70, (unsigned long )(& tmp___3));
#line 62
      tmp___3 = 1;
    }
    }
    __CrestLoad(71, (unsigned long )(& tmp___3), (long long )tmp___3);
    __CrestStore(72, (unsigned long )(& result));
#line 62
    result = tmp___3;
  } else {
    __CrestBranch(41, 23, 0);
    {
    __CrestLoad(75, (unsigned long )(& Cur_Vertical_Sep), (long long )Cur_Vertical_Sep);
    __CrestLoad(74, (unsigned long )0, (long long )300);
    __CrestApply2(73, 17, (long long )(Cur_Vertical_Sep >= 300));
#line 66
    if (Cur_Vertical_Sep >= 300) {
      __CrestBranch(76, 24, 1);
#line 66
      tmp___4 = ALIM();
      __CrestHandleReturn(79, (long long )tmp___4);
      __CrestStore(78, (unsigned long )(& tmp___4));
      {
      __CrestLoad(82, (unsigned long )(& Up_Separation), (long long )Up_Separation);
      __CrestLoad(81, (unsigned long )(& tmp___4), (long long )tmp___4);
      __CrestApply2(80, 17, (long long )(Up_Separation >= tmp___4));
#line 66
      if (Up_Separation >= tmp___4) {
        __CrestBranch(83, 26, 1);
        __CrestLoad(85, (unsigned long )0, (long long )1);
        __CrestStore(86, (unsigned long )(& tmp___5));
#line 66
        tmp___5 = 1;
      } else {
        __CrestBranch(84, 27, 0);
        __CrestLoad(87, (unsigned long )0, (long long )0);
        __CrestStore(88, (unsigned long )(& tmp___5));
#line 66
        tmp___5 = 0;
      }
      }
    } else {
      __CrestBranch(77, 28, 0);
      __CrestLoad(89, (unsigned long )0, (long long )0);
      __CrestStore(90, (unsigned long )(& tmp___5));
#line 66
      tmp___5 = 0;
    }
    }
    __CrestLoad(91, (unsigned long )(& tmp___5), (long long )tmp___5);
    __CrestStore(92, (unsigned long )(& result));
#line 66
    result = tmp___5;
  }
  }
  {
  __CrestLoad(93, (unsigned long )(& result), (long long )result);
  __CrestReturn(94);
#line 68
  return (result);
  }
}
}
#line 94
int Own_Above_Threat(void) ;
#line 70 "tcas.c"
int Non_Crossing_Biased_Descend(void) 
{ 
  int upward_preferred ;
  int result ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;

  {
  __CrestCall(95, 5);

#line 75
  __CrestInt(& Cur_Vertical_Sep);
#line 76
  __CrestInt(& High_Confidence);
#line 77
  __CrestInt(& Two_of_Three_Reports_Valid);
#line 78
  __CrestInt(& Own_Tracked_Alt);
#line 79
  __CrestInt(& Own_Tracked_Alt_Rate);
#line 80
  __CrestInt(& Other_Tracked_Alt);
#line 81
  __CrestInt(& Alt_Layer_Value);
#line 82
  __CrestInt((int *)(& Positive_RA_Alt_Thresh));
#line 83
  __CrestInt(& Up_Separation);
#line 84
  __CrestInt(& Down_Separation);
#line 87
  tmp = Inhibit_Biased_Climb();
  __CrestHandleReturn(97, (long long )tmp);
  __CrestStore(96, (unsigned long )(& tmp));
  __CrestLoad(100, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(99, (unsigned long )(& Down_Separation), (long long )Down_Separation);
  __CrestApply2(98, 14, (long long )(tmp > Down_Separation));
  __CrestStore(101, (unsigned long )(& upward_preferred));
#line 87
  upward_preferred = tmp > Down_Separation;
  {
  __CrestLoad(104, (unsigned long )(& upward_preferred), (long long )upward_preferred);
  __CrestLoad(103, (unsigned long )0, (long long )0);
  __CrestApply2(102, 13, (long long )(upward_preferred != 0));
#line 88
  if (upward_preferred != 0) {
    __CrestBranch(105, 33, 1);
#line 90
    tmp___0 = Own_Below_Threat();
    __CrestHandleReturn(108, (long long )tmp___0);
    __CrestStore(107, (unsigned long )(& tmp___0));
    {
    __CrestLoad(111, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestLoad(110, (unsigned long )0, (long long )0);
    __CrestApply2(109, 13, (long long )(tmp___0 != 0));
#line 90
    if (tmp___0 != 0) {
      __CrestBranch(112, 35, 1);
      {
      __CrestLoad(116, (unsigned long )(& Cur_Vertical_Sep), (long long )Cur_Vertical_Sep);
      __CrestLoad(115, (unsigned long )0, (long long )300);
      __CrestApply2(114, 17, (long long )(Cur_Vertical_Sep >= 300));
#line 90
      if (Cur_Vertical_Sep >= 300) {
        __CrestBranch(117, 36, 1);
#line 90
        tmp___1 = ALIM();
        __CrestHandleReturn(120, (long long )tmp___1);
        __CrestStore(119, (unsigned long )(& tmp___1));
        {
        __CrestLoad(123, (unsigned long )(& Down_Separation), (long long )Down_Separation);
        __CrestLoad(122, (unsigned long )(& tmp___1), (long long )tmp___1);
        __CrestApply2(121, 17, (long long )(Down_Separation >= tmp___1));
#line 90
        if (Down_Separation >= tmp___1) {
          __CrestBranch(124, 38, 1);
          __CrestLoad(126, (unsigned long )0, (long long )1);
          __CrestStore(127, (unsigned long )(& tmp___2));
#line 90
          tmp___2 = 1;
        } else {
          __CrestBranch(125, 39, 0);
          __CrestLoad(128, (unsigned long )0, (long long )0);
          __CrestStore(129, (unsigned long )(& tmp___2));
#line 90
          tmp___2 = 0;
        }
        }
      } else {
        __CrestBranch(118, 40, 0);
        __CrestLoad(130, (unsigned long )0, (long long )0);
        __CrestStore(131, (unsigned long )(& tmp___2));
#line 90
        tmp___2 = 0;
      }
      }
    } else {
      __CrestBranch(113, 41, 0);
      __CrestLoad(132, (unsigned long )0, (long long )0);
      __CrestStore(133, (unsigned long )(& tmp___2));
#line 90
      tmp___2 = 0;
    }
    }
    __CrestLoad(134, (unsigned long )(& tmp___2), (long long )tmp___2);
    __CrestStore(135, (unsigned long )(& result));
#line 90
    result = tmp___2;
  } else {
    __CrestBranch(106, 43, 0);
#line 94
    tmp___3 = Own_Above_Threat();
    __CrestHandleReturn(137, (long long )tmp___3);
    __CrestStore(136, (unsigned long )(& tmp___3));
    {
    __CrestLoad(140, (unsigned long )(& tmp___3), (long long )tmp___3);
    __CrestLoad(139, (unsigned long )0, (long long )0);
    __CrestApply2(138, 13, (long long )(tmp___3 != 0));
#line 94
    if (tmp___3 != 0) {
      __CrestBranch(141, 45, 1);
#line 94
      tmp___4 = Own_Above_Threat();
      __CrestHandleReturn(144, (long long )tmp___4);
      __CrestStore(143, (unsigned long )(& tmp___4));
      {
      __CrestLoad(147, (unsigned long )(& tmp___4), (long long )tmp___4);
      __CrestLoad(146, (unsigned long )0, (long long )0);
      __CrestApply2(145, 13, (long long )(tmp___4 != 0));
#line 94
      if (tmp___4 != 0) {
        __CrestBranch(148, 47, 1);
#line 94
        tmp___5 = ALIM();
        __CrestHandleReturn(151, (long long )tmp___5);
        __CrestStore(150, (unsigned long )(& tmp___5));
        {
        __CrestLoad(154, (unsigned long )(& Up_Separation), (long long )Up_Separation);
        __CrestLoad(153, (unsigned long )(& tmp___5), (long long )tmp___5);
        __CrestApply2(152, 17, (long long )(Up_Separation >= tmp___5));
#line 94
        if (Up_Separation >= tmp___5) {
          __CrestBranch(155, 49, 1);
          __CrestLoad(157, (unsigned long )0, (long long )1);
          __CrestStore(158, (unsigned long )(& tmp___6));
#line 94
          tmp___6 = 1;
        } else {
          __CrestBranch(156, 50, 0);
          __CrestLoad(159, (unsigned long )0, (long long )0);
          __CrestStore(160, (unsigned long )(& tmp___6));
#line 94
          tmp___6 = 0;
        }
        }
      } else {
        __CrestBranch(149, 51, 0);
        __CrestLoad(161, (unsigned long )0, (long long )0);
        __CrestStore(162, (unsigned long )(& tmp___6));
#line 94
        tmp___6 = 0;
      }
      }
    } else {
      __CrestBranch(142, 52, 0);
      __CrestLoad(163, (unsigned long )0, (long long )1);
      __CrestStore(164, (unsigned long )(& tmp___6));
#line 94
      tmp___6 = 1;
    }
    }
    __CrestLoad(165, (unsigned long )(& tmp___6), (long long )tmp___6);
    __CrestStore(166, (unsigned long )(& result));
#line 94
    result = tmp___6;
  }
  }
  {
  __CrestLoad(167, (unsigned long )(& result), (long long )result);
  __CrestReturn(168);
#line 96
  return (result);
  }
}
}
#line 98 "tcas.c"
int Own_Below_Threat(void) 
{ 
  int __retres1 ;

  {
  __CrestCall(169, 6);

  __CrestLoad(172, (unsigned long )(& Own_Tracked_Alt), (long long )Own_Tracked_Alt);
  __CrestLoad(171, (unsigned long )(& Other_Tracked_Alt), (long long )Other_Tracked_Alt);
  __CrestApply2(170, 16, (long long )(Own_Tracked_Alt < Other_Tracked_Alt));
  __CrestStore(173, (unsigned long )(& __retres1));
#line 100
  __retres1 = Own_Tracked_Alt < Other_Tracked_Alt;
  {
  __CrestLoad(174, (unsigned long )(& __retres1), (long long )__retres1);
  __CrestReturn(175);
#line 98
  return (__retres1);
  }
}
}
#line 102 "tcas.c"
int Own_Above_Threat(void) 
{ 
  int __retres1 ;

  {
  __CrestCall(176, 7);

  __CrestLoad(179, (unsigned long )(& Other_Tracked_Alt), (long long )Other_Tracked_Alt);
  __CrestLoad(178, (unsigned long )(& Own_Tracked_Alt), (long long )Own_Tracked_Alt);
  __CrestApply2(177, 16, (long long )(Other_Tracked_Alt < Own_Tracked_Alt));
  __CrestStore(180, (unsigned long )(& __retres1));
#line 104
  __retres1 = Other_Tracked_Alt < Own_Tracked_Alt;
  {
  __CrestLoad(181, (unsigned long )(& __retres1), (long long )__retres1);
  __CrestReturn(182);
#line 102
  return (__retres1);
  }
}
}
#line 106 "tcas.c"
int alt_sep_test(void) 
{ 
  int enabled ;
  int tcas_equipped ;
  int intent_not_known ;
  int need_upward_RA ;
  int need_downward_RA ;
  int alt_sep ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;

  {
  __CrestCall(183, 8);

  {
  __CrestLoad(186, (unsigned long )(& High_Confidence), (long long )High_Confidence);
  __CrestLoad(185, (unsigned long )0, (long long )0);
  __CrestApply2(184, 13, (long long )(High_Confidence != 0));
#line 111
  if (High_Confidence != 0) {
    __CrestBranch(187, 60, 1);
    {
    __CrestLoad(191, (unsigned long )(& Own_Tracked_Alt_Rate), (long long )Own_Tracked_Alt_Rate);
    __CrestLoad(190, (unsigned long )0, (long long )600);
    __CrestApply2(189, 15, (long long )(Own_Tracked_Alt_Rate <= 600));
#line 111
    if (Own_Tracked_Alt_Rate <= 600) {
      __CrestBranch(192, 61, 1);
      {
      __CrestLoad(196, (unsigned long )(& Cur_Vertical_Sep), (long long )Cur_Vertical_Sep);
      __CrestLoad(195, (unsigned long )0, (long long )600);
      __CrestApply2(194, 14, (long long )(Cur_Vertical_Sep > 600));
#line 111
      if (Cur_Vertical_Sep > 600) {
        __CrestBranch(197, 62, 1);
        __CrestLoad(199, (unsigned long )0, (long long )1);
        __CrestStore(200, (unsigned long )(& tmp));
#line 111
        tmp = 1;
      } else {
        __CrestBranch(198, 63, 0);
        __CrestLoad(201, (unsigned long )0, (long long )0);
        __CrestStore(202, (unsigned long )(& tmp));
#line 111
        tmp = 0;
      }
      }
    } else {
      __CrestBranch(193, 64, 0);
      __CrestLoad(203, (unsigned long )0, (long long )0);
      __CrestStore(204, (unsigned long )(& tmp));
#line 111
      tmp = 0;
    }
    }
  } else {
    __CrestBranch(188, 65, 0);
    __CrestLoad(205, (unsigned long )0, (long long )0);
    __CrestStore(206, (unsigned long )(& tmp));
#line 111
    tmp = 0;
  }
  }
  __CrestLoad(207, (unsigned long )(& tmp), (long long )tmp);
  __CrestStore(208, (unsigned long )(& enabled));
#line 111
  enabled = tmp;
  __CrestLoad(211, (unsigned long )(& Other_Capability), (long long )Other_Capability);
  __CrestLoad(210, (unsigned long )0, (long long )1);
  __CrestApply2(209, 12, (long long )(Other_Capability == 1));
  __CrestStore(212, (unsigned long )(& tcas_equipped));
#line 112
  tcas_equipped = Other_Capability == 1;
  {
  __CrestLoad(215, (unsigned long )(& Two_of_Three_Reports_Valid), (long long )Two_of_Three_Reports_Valid);
  __CrestLoad(214, (unsigned long )0, (long long )0);
  __CrestApply2(213, 13, (long long )(Two_of_Three_Reports_Valid != 0));
#line 113
  if (Two_of_Three_Reports_Valid != 0) {
    __CrestBranch(216, 68, 1);
    {
    __CrestLoad(220, (unsigned long )(& Other_RAC), (long long )Other_RAC);
    __CrestLoad(219, (unsigned long )0, (long long )0);
    __CrestApply2(218, 12, (long long )(Other_RAC == 0));
#line 113
    if (Other_RAC == 0) {
      __CrestBranch(221, 69, 1);
      __CrestLoad(223, (unsigned long )0, (long long )1);
      __CrestStore(224, (unsigned long )(& tmp___0));
#line 113
      tmp___0 = 1;
    } else {
      __CrestBranch(222, 70, 0);
      __CrestLoad(225, (unsigned long )0, (long long )0);
      __CrestStore(226, (unsigned long )(& tmp___0));
#line 113
      tmp___0 = 0;
    }
    }
  } else {
    __CrestBranch(217, 71, 0);
    __CrestLoad(227, (unsigned long )0, (long long )0);
    __CrestStore(228, (unsigned long )(& tmp___0));
#line 113
    tmp___0 = 0;
  }
  }
  __CrestLoad(229, (unsigned long )(& tmp___0), (long long )tmp___0);
  __CrestStore(230, (unsigned long )(& intent_not_known));
#line 113
  intent_not_known = tmp___0;
  __CrestLoad(231, (unsigned long )0, (long long )0);
  __CrestStore(232, (unsigned long )(& alt_sep));
#line 114
  alt_sep = 0;
  {
  __CrestLoad(235, (unsigned long )(& enabled), (long long )enabled);
  __CrestLoad(234, (unsigned long )0, (long long )0);
  __CrestApply2(233, 13, (long long )(enabled != 0));
#line 115
  if (enabled != 0) {
    __CrestBranch(236, 74, 1);
    {
    __CrestLoad(240, (unsigned long )(& tcas_equipped), (long long )tcas_equipped);
    __CrestLoad(239, (unsigned long )0, (long long )0);
    __CrestApply2(238, 13, (long long )(tcas_equipped != 0));
#line 115
    if (tcas_equipped != 0) {
      __CrestBranch(241, 75, 1);
      {
      __CrestLoad(245, (unsigned long )(& intent_not_known), (long long )intent_not_known);
      __CrestLoad(244, (unsigned long )0, (long long )0);
      __CrestApply2(243, 13, (long long )(intent_not_known != 0));
#line 115
      if (intent_not_known != 0) {
        __CrestBranch(246, 76, 1);
#line 115
        goto _L___0;
      } else {
        __CrestBranch(247, 77, 0);
#line 115
        goto _L___1;
      }
      }
    } else {
      __CrestBranch(242, 78, 0);
      _L___1: /* CIL Label */ 
      {
      __CrestLoad(250, (unsigned long )(& tcas_equipped), (long long )tcas_equipped);
      __CrestLoad(249, (unsigned long )0, (long long )0);
      __CrestApply2(248, 12, (long long )(tcas_equipped == 0));
#line 115
      if (tcas_equipped == 0) {
        __CrestBranch(251, 79, 1);
        _L___0: /* CIL Label */ 
#line 117
        tmp___1 = Non_Crossing_Biased_Climb();
        __CrestHandleReturn(254, (long long )tmp___1);
        __CrestStore(253, (unsigned long )(& tmp___1));
        {
        __CrestLoad(257, (unsigned long )(& tmp___1), (long long )tmp___1);
        __CrestLoad(256, (unsigned long )0, (long long )0);
        __CrestApply2(255, 13, (long long )(tmp___1 != 0));
#line 117
        if (tmp___1 != 0) {
          __CrestBranch(258, 81, 1);
#line 117
          tmp___2 = Own_Below_Threat();
          __CrestHandleReturn(261, (long long )tmp___2);
          __CrestStore(260, (unsigned long )(& tmp___2));
          {
          __CrestLoad(264, (unsigned long )(& tmp___2), (long long )tmp___2);
          __CrestLoad(263, (unsigned long )0, (long long )0);
          __CrestApply2(262, 13, (long long )(tmp___2 != 0));
#line 117
          if (tmp___2 != 0) {
            __CrestBranch(265, 83, 1);
            __CrestLoad(267, (unsigned long )0, (long long )1);
            __CrestStore(268, (unsigned long )(& tmp___3));
#line 117
            tmp___3 = 1;
          } else {
            __CrestBranch(266, 84, 0);
            __CrestLoad(269, (unsigned long )0, (long long )0);
            __CrestStore(270, (unsigned long )(& tmp___3));
#line 117
            tmp___3 = 0;
          }
          }
        } else {
          __CrestBranch(259, 85, 0);
          __CrestLoad(271, (unsigned long )0, (long long )0);
          __CrestStore(272, (unsigned long )(& tmp___3));
#line 117
          tmp___3 = 0;
        }
        }
        __CrestLoad(273, (unsigned long )(& tmp___3), (long long )tmp___3);
        __CrestStore(274, (unsigned long )(& need_upward_RA));
#line 117
        need_upward_RA = tmp___3;
#line 118
        tmp___4 = Non_Crossing_Biased_Descend();
        __CrestHandleReturn(276, (long long )tmp___4);
        __CrestStore(275, (unsigned long )(& tmp___4));
        {
        __CrestLoad(279, (unsigned long )(& tmp___4), (long long )tmp___4);
        __CrestLoad(278, (unsigned long )0, (long long )0);
        __CrestApply2(277, 13, (long long )(tmp___4 != 0));
#line 118
        if (tmp___4 != 0) {
          __CrestBranch(280, 88, 1);
#line 118
          tmp___5 = Own_Above_Threat();
          __CrestHandleReturn(283, (long long )tmp___5);
          __CrestStore(282, (unsigned long )(& tmp___5));
          {
          __CrestLoad(286, (unsigned long )(& tmp___5), (long long )tmp___5);
          __CrestLoad(285, (unsigned long )0, (long long )0);
          __CrestApply2(284, 13, (long long )(tmp___5 != 0));
#line 118
          if (tmp___5 != 0) {
            __CrestBranch(287, 90, 1);
            __CrestLoad(289, (unsigned long )0, (long long )1);
            __CrestStore(290, (unsigned long )(& tmp___6));
#line 118
            tmp___6 = 1;
          } else {
            __CrestBranch(288, 91, 0);
            __CrestLoad(291, (unsigned long )0, (long long )0);
            __CrestStore(292, (unsigned long )(& tmp___6));
#line 118
            tmp___6 = 0;
          }
          }
        } else {
          __CrestBranch(281, 92, 0);
          __CrestLoad(293, (unsigned long )0, (long long )0);
          __CrestStore(294, (unsigned long )(& tmp___6));
#line 118
          tmp___6 = 0;
        }
        }
        __CrestLoad(295, (unsigned long )(& tmp___6), (long long )tmp___6);
        __CrestStore(296, (unsigned long )(& need_downward_RA));
#line 118
        need_downward_RA = tmp___6;
        {
        __CrestLoad(299, (unsigned long )(& need_upward_RA), (long long )need_upward_RA);
        __CrestLoad(298, (unsigned long )0, (long long )0);
        __CrestApply2(297, 13, (long long )(need_upward_RA != 0));
#line 119
        if (need_upward_RA != 0) {
          __CrestBranch(300, 95, 1);
          {
          __CrestLoad(304, (unsigned long )(& need_downward_RA), (long long )need_downward_RA);
          __CrestLoad(303, (unsigned long )0, (long long )0);
          __CrestApply2(302, 13, (long long )(need_downward_RA != 0));
#line 119
          if (need_downward_RA != 0) {
            __CrestBranch(305, 96, 1);
            __CrestLoad(307, (unsigned long )0, (long long )0);
            __CrestStore(308, (unsigned long )(& alt_sep));
#line 123
            alt_sep = 0;
          } else {
            __CrestBranch(306, 97, 0);
#line 119
            goto _L;
          }
          }
        } else {
          __CrestBranch(301, 98, 0);
          _L: /* CIL Label */ 
          {
          __CrestLoad(311, (unsigned long )(& need_upward_RA), (long long )need_upward_RA);
          __CrestLoad(310, (unsigned long )0, (long long )0);
          __CrestApply2(309, 13, (long long )(need_upward_RA != 0));
#line 124
          if (need_upward_RA != 0) {
            __CrestBranch(312, 99, 1);
            __CrestLoad(314, (unsigned long )0, (long long )1);
            __CrestStore(315, (unsigned long )(& alt_sep));
#line 125
            alt_sep = 1;
          } else {
            __CrestBranch(313, 100, 0);
            {
            __CrestLoad(318, (unsigned long )(& need_downward_RA), (long long )need_downward_RA);
            __CrestLoad(317, (unsigned long )0, (long long )0);
            __CrestApply2(316, 13, (long long )(need_downward_RA != 0));
#line 126
            if (need_downward_RA != 0) {
              __CrestBranch(319, 101, 1);
              __CrestLoad(321, (unsigned long )0, (long long )2);
              __CrestStore(322, (unsigned long )(& alt_sep));
#line 127
              alt_sep = 2;
            } else {
              __CrestBranch(320, 102, 0);
              __CrestLoad(323, (unsigned long )0, (long long )0);
              __CrestStore(324, (unsigned long )(& alt_sep));
#line 129
              alt_sep = 0;
            }
            }
          }
          }
        }
        }
      } else {
        __CrestBranch(252, 103, 0);

      }
      }
    }
    }
  } else {
    __CrestBranch(237, 104, 0);

  }
  }
  {
  __CrestLoad(325, (unsigned long )(& alt_sep), (long long )alt_sep);
  __CrestReturn(326);
#line 131
  return (alt_sep);
  }
}
}
#line 133 "tcas.c"
int main(int argc , char **argv ) 
{ 
  int __retres3 ;

  {
  __globinit_tcas();
  __CrestCall(328, 9);
  __CrestStore(327, (unsigned long )(& argc));
  __CrestLoad(331, (unsigned long )(& argc), (long long )argc);
  __CrestLoad(330, (unsigned long )0, (long long )13);
  __CrestApply2(329, 16, (long long )(argc < 13));
#line 137
  if (argc < 13) {
    __CrestBranch(332, 107, 1);
#line 139
    fprintf((FILE * __restrict  )stdout, (char const   * __restrict  )"Error: Command line arguments are\n");
    __CrestClearStack(334);
#line 140
    fprintf((FILE * __restrict  )stdout, (char const   * __restrict  )"Cur_Vertical_Sep, High_Confidence, Two_of_Three_Reports_Valid\n");
    __CrestClearStack(335);
#line 141
    fprintf((FILE * __restrict  )stdout, (char const   * __restrict  )"Own_Tracked_Alt, Own_Tracked_Alt_Rate, Other_Tracked_Alt\n");
    __CrestClearStack(336);
#line 142
    fprintf((FILE * __restrict  )stdout, (char const   * __restrict  )"Alt_Layer_Value, Up_Separation, Down_Separation\n");
    __CrestClearStack(337);
#line 143
    fprintf((FILE * __restrict  )stdout, (char const   * __restrict  )"Other_RAC, Other_Capability, Climb_Inhibit\n");
    __CrestClearStack(338);
  } else {
    __CrestBranch(333, 108, 0);

  }
#line 146
  initialize();
  __CrestClearStack(339);
  __CrestLoad(340, (unsigned long )0, (long long )0);
  __CrestStore(341, (unsigned long )(& __retres3));
#line 151
  __retres3 = 0;
  __CrestLoad(342, (unsigned long )(& __retres3), (long long )__retres3);
  __CrestReturn(343);
#line 133
  return (__retres3);
}
}
void __globinit_tcas(void) 
{ 


  {
  __CrestInit();
}
}
