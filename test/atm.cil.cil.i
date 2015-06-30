# 1 "./atm.cil.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./atm.cil.cil.c"
# 20 "atm.c"
void __globinit_atm_cil(void) ;
extern void __CrestHandleReturn(int id , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
# 20 "atm.c"
void __globinit_atm(void) ;
# 21 "atm.c"
extern void __CrestInit(void) __attribute__((__crest_skip__)) ;
# 23 "atm.c"
extern void __CrestReturn(int id ) __attribute__((__crest_skip__)) ;
# 24 "atm.c"
extern void __CrestCall(int id , unsigned int fid ) __attribute__((__crest_skip__)) ;
# 25 "atm.c"
extern void __CrestBranch(int id , int bid , unsigned char b ) __attribute__((__crest_skip__)) ;
# 26 "atm.c"
extern void __CrestApply2(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
# 28 "atm.c"
extern void __CrestClearStack(int id ) __attribute__((__crest_skip__)) ;
# 29 "atm.c"
extern void __CrestStore(int id , unsigned long addr ) __attribute__((__crest_skip__)) ;
# 30 "atm.c"
extern void __CrestLoad(int id , unsigned long addr , long long val ) __attribute__((__crest_skip__)) ;
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 12 "atm.c"
int amount = 1000;
# 12 "atm.c"
int deposit ;
# 12 "atm.c"
int withdraw ;
# 14 "atm.c"
int choice ;
# 14 "atm.c"
int pin ;
# 14 "atm.c"
int k ;
# 16 "atm.c"
int transaction = 1;
# 20 "atm.c"
void main(void)
{


  {
  __globinit_atm_cil();
  __CrestCall(1, 1);
# 25 "atm.c"
  __globinit_atm();
  __CrestClearStack(2);
# 26 "atm.c"
  __CrestCall(1, 1U);
# 23 "atm.c"
  __CrestInt(& pin);
# 24 "atm.c"
  __CrestInt(& k);
# 25 "atm.c"
  __CrestInt(& choice);
# 26 "atm.c"
  __CrestLoad(4, (unsigned long )(& pin), (long long )pin);
# 27 "atm.c"
  __CrestLoad(3, 0UL, 1520LL);
# 28 "atm.c"
  __CrestApply2(2, 13, (long long )(pin != 1520));
  __CrestLoad(5, (unsigned long )(& pin), (long long )pin);
  __CrestLoad(4, (unsigned long )0, (long long )1520);
  __CrestApply2(3, 13, (long long )(pin != 1520));
# 29 "atm.c"
  if (pin != 1520) {
    __CrestBranch(6, 3, 1);
# 30 "atm.c"
    __CrestBranch(5, 4, (unsigned char)1);
# 31 "atm.c"
    printf((char const * __restrict )"ENTER YOUR SECRET PIN NUMBER:");
    __CrestClearStack(8);
# 32 "atm.c"
    __CrestClearStack(7);
# 34 "atm.c"
    __CrestLoad(10, (unsigned long )(& pin), (long long )pin);
# 35 "atm.c"
    __CrestLoad(9, 0UL, 1520LL);
# 36 "atm.c"
    __CrestApply2(8, 13, (long long )(pin != 1520));
    {
    __CrestLoad(11, (unsigned long )(& pin), (long long )pin);
    __CrestLoad(10, (unsigned long )0, (long long )1520);
    __CrestApply2(9, 13, (long long )(pin != 1520));
# 37 "atm.c"
    if (pin != 1520) {
      __CrestBranch(12, 5, 1);
# 38 "atm.c"
      __CrestBranch(11, 6, (unsigned char)1);
# 39 "atm.c"
      printf((char const * __restrict )"PLEASE ENTER VALID PASSWORD\n");
      __CrestClearStack(14);
# 40 "atm.c"
      __CrestClearStack(13);
    } else {
      __CrestBranch(13, 6, 0);
# 42 "atm.c"
      __CrestBranch(12, 7, (unsigned char)0);
    }
    }
  } else {
    __CrestBranch(7, 7, 0);
# 47 "atm.c"
    __CrestBranch(6, 8, (unsigned char)0);
  }
# 50 "atm.c"
  __CrestLoad(16, (unsigned long )(& pin), (long long )pin);
# 51 "atm.c"
  __CrestLoad(15, 0UL, 1520LL);
# 52 "atm.c"
  __CrestApply2(14, 13, (long long )(pin != 1520));
  __CrestLoad(17, (unsigned long )(& pin), (long long )pin);
  __CrestLoad(16, (unsigned long )0, (long long )1520);
  __CrestApply2(15, 13, (long long )(pin != 1520));
# 53 "atm.c"
  if (pin != 1520) {
    __CrestBranch(18, 10, 1);
# 54 "atm.c"
    __CrestBranch(17, 10, (unsigned char)1);
# 55 "atm.c"
    printf((char const * __restrict )"ENTER YOUR SECRET PIN NUMBER:");
    __CrestClearStack(20);
# 56 "atm.c"
    __CrestClearStack(19);
# 58 "atm.c"
    __CrestLoad(22, (unsigned long )(& pin), (long long )pin);
# 59 "atm.c"
    __CrestLoad(21, 0UL, 1520LL);
# 60 "atm.c"
    __CrestApply2(20, 13, (long long )(pin != 1520));
    {
    __CrestLoad(23, (unsigned long )(& pin), (long long )pin);
    __CrestLoad(22, (unsigned long )0, (long long )1520);
    __CrestApply2(21, 13, (long long )(pin != 1520));
# 61 "atm.c"
    if (pin != 1520) {
      __CrestBranch(24, 12, 1);
# 62 "atm.c"
      __CrestBranch(23, 12, (unsigned char)1);
# 63 "atm.c"
      printf((char const * __restrict )"PLEASE ENTER VALID PASSWORD\n");
      __CrestClearStack(26);
# 64 "atm.c"
      __CrestClearStack(25);
    } else {
      __CrestBranch(25, 13, 0);
# 66 "atm.c"
      __CrestBranch(24, 13, (unsigned char)0);
    }
    }
  } else {
    __CrestBranch(19, 14, 0);
# 71 "atm.c"
    __CrestBranch(18, 14, (unsigned char)0);
  }
# 74 "atm.c"
  __CrestLoad(28, (unsigned long )(& k), (long long )k);
# 75 "atm.c"
  __CrestLoad(27, 0UL, 1LL);
# 76 "atm.c"
  __CrestApply2(26, 13, (long long )(k != 1));
  __CrestLoad(29, (unsigned long )(& k), (long long )k);
  __CrestLoad(28, (unsigned long )0, (long long )1);
  __CrestApply2(27, 13, (long long )(k != 1));
# 77 "atm.c"
  if (k != 1) {
    __CrestBranch(30, 17, 1);
# 78 "atm.c"
    __CrestBranch(29, 17, (unsigned char)1);
# 79 "atm.c"
    printf((char const * __restrict )"********Welcome to ATM Service**************\n");
    __CrestClearStack(32);
# 80 "atm.c"
    __CrestClearStack(31);
# 81 "atm.c"
    printf((char const * __restrict )"1. Check Balance\n");
    __CrestClearStack(33);
# 82 "atm.c"
    __CrestClearStack(32);
# 83 "atm.c"
    printf((char const * __restrict )"2. Withdraw Cash\n");
    __CrestClearStack(34);
# 84 "atm.c"
    __CrestClearStack(33);
# 85 "atm.c"
    printf((char const * __restrict )"3. Deposit Cash\n");
    __CrestClearStack(35);
# 86 "atm.c"
    __CrestClearStack(34);
# 87 "atm.c"
    printf((char const * __restrict )"4. Quit\n");
    __CrestClearStack(36);
# 88 "atm.c"
    __CrestClearStack(35);
# 89 "atm.c"
    printf((char const * __restrict )"******************?**************************?*\n\n");
    __CrestClearStack(37);
# 90 "atm.c"
    __CrestClearStack(36);
# 91 "atm.c"
    printf((char const * __restrict )"Enter your choice: ");
    __CrestClearStack(38);
# 92 "atm.c"
    __CrestClearStack(37);
# 94 "atm.c"
    __CrestLoad(40, (unsigned long )(& choice), (long long )choice);
# 95 "atm.c"
    __CrestLoad(39, 0UL, 1LL);
# 96 "atm.c"
    __CrestApply2(38, 12, (long long )(choice == 1));
    {
    __CrestLoad(41, (unsigned long )(& choice), (long long )choice);
    __CrestLoad(40, (unsigned long )0, (long long )1);
    __CrestApply2(39, 12, (long long )(choice == 1));
# 97 "atm.c"
    if (choice == 1) {
      __CrestBranch(42, 19, 1);
# 98 "atm.c"
      __CrestBranch(41, 19, (unsigned char)1);
# 99 "atm.c"
      __CrestLoad(43, (unsigned long )(& amount), (long long )amount);
      __CrestLoad(44, (unsigned long )(& amount), (long long )amount);
# 100 "atm.c"
      printf((char const * __restrict )"\n YOUR BALANCE IN Rs : %d ", amount);
      __CrestClearStack(45);
# 101 "atm.c"
      __CrestClearStack(44);
    } else {
      __CrestBranch(43, 20, 0);
# 103 "atm.c"
      __CrestBranch(42, 20, (unsigned char)0);
# 105 "atm.c"
      __CrestLoad(47, (unsigned long )(& choice), (long long )choice);
# 106 "atm.c"
      __CrestLoad(46, 0UL, 2LL);
# 107 "atm.c"
      __CrestApply2(45, 12, (long long )(choice == 2));
      {
      __CrestLoad(48, (unsigned long )(& choice), (long long )choice);
      __CrestLoad(47, (unsigned long )0, (long long )2);
      __CrestApply2(46, 12, (long long )(choice == 2));
# 108 "atm.c"
      if (choice == 2) {
        __CrestBranch(49, 22, 1);
# 109 "atm.c"
        __CrestBranch(48, 21, (unsigned char)1);
# 110 "atm.c"
        printf((char const * __restrict )"\n ENTER THE AMOUNT TO WITHDRAW: ");
        __CrestClearStack(51);
# 111 "atm.c"
        __CrestClearStack(50);
# 113 "atm.c"
        __CrestLoad(55, (unsigned long )(& withdraw), (long long )withdraw);
# 114 "atm.c"
        __CrestLoad(54, 0UL, 100LL);
# 115 "atm.c"
        __CrestApply2(53, 4, (long long )(withdraw % 100));
# 116 "atm.c"
        __CrestLoad(52, 0UL, 0LL);
# 117 "atm.c"
        __CrestApply2(51, 13, (long long )(withdraw % 100 != 0));
        {
        __CrestLoad(56, (unsigned long )(& withdraw), (long long )withdraw);
        __CrestLoad(55, (unsigned long )0, (long long )100);
        __CrestApply2(54, 4, (long long )(withdraw % 100));
        __CrestLoad(53, (unsigned long )0, (long long )0);
        __CrestApply2(52, 13, (long long )(withdraw % 100 != 0));
# 118 "atm.c"
        if (withdraw % 100 != 0) {
          __CrestBranch(57, 24, 1);
# 119 "atm.c"
          __CrestBranch(56, 23, (unsigned char)1);
# 120 "atm.c"
          printf((char const * __restrict )"\n PLEASE ENTER THE AMOUNT IN MULTIPLES OF 100");
          __CrestClearStack(59);
# 121 "atm.c"
          __CrestClearStack(58);
        } else {
          __CrestBranch(58, 25, 0);
# 123 "atm.c"
          __CrestBranch(57, 24, (unsigned char)0);
# 125 "atm.c"
          __CrestLoad(63, (unsigned long )(& withdraw), (long long )withdraw);
# 126 "atm.c"
          __CrestLoad(62, (unsigned long )(& amount), (long long )amount);
# 127 "atm.c"
          __CrestLoad(61, 0UL, 500LL);
# 128 "atm.c"
          __CrestApply2(60, 1, (long long )(amount - 500));
# 129 "atm.c"
          __CrestApply2(59, 14, (long long )(withdraw > amount - 500));
          {
          __CrestLoad(64, (unsigned long )(& withdraw), (long long )withdraw);
          __CrestLoad(63, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(62, (unsigned long )0, (long long )500);
          __CrestApply2(61, 1, (long long )(amount - 500));
          __CrestApply2(60, 14, (long long )(withdraw > amount - 500));
# 130 "atm.c"
          if (withdraw > amount - 500) {
            __CrestBranch(65, 27, 1);
# 131 "atm.c"
            __CrestBranch(64, 25, (unsigned char)1);
# 132 "atm.c"
            printf((char const * __restrict )"\n INSUFFICENT BALANCE");
            __CrestClearStack(67);
# 133 "atm.c"
            __CrestClearStack(66);
          } else {
            __CrestBranch(66, 28, 0);
# 135 "atm.c"
            __CrestBranch(65, 26, (unsigned char)0);
# 136 "atm.c"
            __CrestLoad(69, (unsigned long )(& amount), (long long )amount);
# 137 "atm.c"
            __CrestLoad(68, (unsigned long )(& withdraw), (long long )withdraw);
# 138 "atm.c"
            __CrestApply2(67, 1, (long long )(amount - withdraw));
# 139 "atm.c"
            __CrestStore(70, (unsigned long )(& amount));
            __CrestLoad(70, (unsigned long )(& amount), (long long )amount);
            __CrestLoad(69, (unsigned long )(& withdraw), (long long )withdraw);
            __CrestApply2(68, 1, (long long )(amount - withdraw));
            __CrestStore(71, (unsigned long )(& amount));
# 140 "atm.c"
            amount -= withdraw;
# 141 "atm.c"
            printf((char const * __restrict )"\n\n PLEASE COLLECT CASH");
            __CrestClearStack(72);
# 142 "atm.c"
            __CrestClearStack(71);
# 143 "atm.c"
            __CrestLoad(72, (unsigned long )(& amount), (long long )amount);
            __CrestLoad(73, (unsigned long )(& amount), (long long )amount);
# 144 "atm.c"
            printf((char const * __restrict )"\n YOUR CURRENT BALANCE IS%d", amount);
            __CrestClearStack(74);
# 145 "atm.c"
            __CrestClearStack(73);
          }
          }
        }
        }
      } else {
        __CrestBranch(50, 29, 0);
# 151 "atm.c"
        __CrestBranch(49, 27, (unsigned char)0);
# 153 "atm.c"
        __CrestLoad(76, (unsigned long )(& choice), (long long )choice);
# 154 "atm.c"
        __CrestLoad(75, 0UL, 3LL);
# 155 "atm.c"
        __CrestApply2(74, 12, (long long )(choice == 3));
        {
        __CrestLoad(77, (unsigned long )(& choice), (long long )choice);
        __CrestLoad(76, (unsigned long )0, (long long )3);
        __CrestApply2(75, 12, (long long )(choice == 3));
# 156 "atm.c"
        if (choice == 3) {
          __CrestBranch(78, 31, 1);
# 157 "atm.c"
          __CrestBranch(77, 28, (unsigned char)1);
# 158 "atm.c"
          printf((char const * __restrict )"\n ENTER THE AMOUNT TO DEPOSIT");
          __CrestClearStack(80);
# 159 "atm.c"
          __CrestClearStack(79);
# 160 "atm.c"
          __CrestLoad(82, (unsigned long )(& amount), (long long )amount);
# 161 "atm.c"
          __CrestLoad(81, (unsigned long )(& deposit), (long long )deposit);
# 162 "atm.c"
          __CrestApply2(80, 0, (long long )(amount + deposit));
# 163 "atm.c"
          __CrestStore(83, (unsigned long )(& amount));
          __CrestLoad(83, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(82, (unsigned long )(& deposit), (long long )deposit);
          __CrestApply2(81, 0, (long long )(amount + deposit));
          __CrestStore(84, (unsigned long )(& amount));
# 164 "atm.c"
          amount += deposit;
# 165 "atm.c"
          __CrestLoad(84, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(85, (unsigned long )(& amount), (long long )amount);
# 166 "atm.c"
          printf((char const * __restrict )"YOUR BALANCE IS %d", amount);
          __CrestClearStack(86);
# 167 "atm.c"
          __CrestClearStack(85);
        } else {
          __CrestBranch(79, 32, 0);
# 169 "atm.c"
          __CrestBranch(78, 29, (unsigned char)0);
# 171 "atm.c"
          __CrestLoad(88, (unsigned long )(& choice), (long long )choice);
# 172 "atm.c"
          __CrestLoad(87, 0UL, 4LL);
# 173 "atm.c"
          __CrestApply2(86, 12, (long long )(choice == 4));
          {
          __CrestLoad(89, (unsigned long )(& choice), (long long )choice);
          __CrestLoad(88, (unsigned long )0, (long long )4);
          __CrestApply2(87, 12, (long long )(choice == 4));
# 174 "atm.c"
          if (choice == 4) {
            __CrestBranch(90, 34, 1);
# 175 "atm.c"
            __CrestBranch(89, 30, (unsigned char)1);
# 176 "atm.c"
            printf((char const * __restrict )"\n THANK U USING ATM");
            __CrestClearStack(92);
# 177 "atm.c"
            __CrestClearStack(91);
          } else {
            __CrestBranch(91, 35, 0);
# 179 "atm.c"
            __CrestBranch(90, 31, (unsigned char)0);
# 180 "atm.c"
            printf((char const * __restrict )"\n INVALID CHOICE");
            __CrestClearStack(93);
# 181 "atm.c"
            __CrestClearStack(92);
          }
          }
        }
        }
      }
      }
    }
    }
  } else {
    __CrestBranch(31, 36, 0);
# 191 "atm.c"
    __CrestBranch(30, 32, (unsigned char)0);
  }
# 194 "atm.c"
  __CrestLoad(95, (unsigned long )(& k), (long long )k);
# 195 "atm.c"
  __CrestLoad(94, 0UL, 1LL);
# 196 "atm.c"
  __CrestApply2(93, 13, (long long )(k != 1));
  __CrestLoad(96, (unsigned long )(& k), (long long )k);
  __CrestLoad(95, (unsigned long )0, (long long )1);
  __CrestApply2(94, 13, (long long )(k != 1));
# 197 "atm.c"
  if (k != 1) {
    __CrestBranch(97, 39, 1);
# 198 "atm.c"
    __CrestBranch(96, 34, (unsigned char)1);
# 199 "atm.c"
    printf((char const * __restrict )"********Welcome to ATM Service**************\n");
    __CrestClearStack(99);
# 200 "atm.c"
    __CrestClearStack(98);
# 201 "atm.c"
    printf((char const * __restrict )"1. Check Balance\n");
    __CrestClearStack(100);
# 202 "atm.c"
    __CrestClearStack(99);
# 203 "atm.c"
    printf((char const * __restrict )"2. Withdraw Cash\n");
    __CrestClearStack(101);
# 204 "atm.c"
    __CrestClearStack(100);
# 205 "atm.c"
    printf((char const * __restrict )"3. Deposit Cash\n");
    __CrestClearStack(102);
# 206 "atm.c"
    __CrestClearStack(101);
# 207 "atm.c"
    printf((char const * __restrict )"4. Quit\n");
    __CrestClearStack(103);
# 208 "atm.c"
    __CrestClearStack(102);
# 209 "atm.c"
    printf((char const * __restrict )"******************?**************************?*\n\n");
    __CrestClearStack(104);
# 210 "atm.c"
    __CrestClearStack(103);
# 211 "atm.c"
    printf((char const * __restrict )"Enter your choice: ");
    __CrestClearStack(105);
# 212 "atm.c"
    __CrestClearStack(104);
# 214 "atm.c"
    __CrestLoad(107, (unsigned long )(& choice), (long long )choice);
# 215 "atm.c"
    __CrestLoad(106, 0UL, 1LL);
# 216 "atm.c"
    __CrestApply2(105, 12, (long long )(choice == 1));
    {
    __CrestLoad(108, (unsigned long )(& choice), (long long )choice);
    __CrestLoad(107, (unsigned long )0, (long long )1);
    __CrestApply2(106, 12, (long long )(choice == 1));
# 217 "atm.c"
    if (choice == 1) {
      __CrestBranch(109, 41, 1);
# 218 "atm.c"
      __CrestBranch(108, 36, (unsigned char)1);
# 219 "atm.c"
      __CrestLoad(110, (unsigned long )(& amount), (long long )amount);
      __CrestLoad(111, (unsigned long )(& amount), (long long )amount);
# 220 "atm.c"
      printf((char const * __restrict )"\n YOUR BALANCE IN Rs : %d ", amount);
      __CrestClearStack(112);
# 221 "atm.c"
      __CrestClearStack(111);
    } else {
      __CrestBranch(110, 42, 0);
# 223 "atm.c"
      __CrestBranch(109, 37, (unsigned char)0);
# 225 "atm.c"
      __CrestLoad(114, (unsigned long )(& choice), (long long )choice);
# 226 "atm.c"
      __CrestLoad(113, 0UL, 2LL);
# 227 "atm.c"
      __CrestApply2(112, 12, (long long )(choice == 2));
      {
      __CrestLoad(115, (unsigned long )(& choice), (long long )choice);
      __CrestLoad(114, (unsigned long )0, (long long )2);
      __CrestApply2(113, 12, (long long )(choice == 2));
# 228 "atm.c"
      if (choice == 2) {
        __CrestBranch(116, 44, 1);
# 229 "atm.c"
        __CrestBranch(115, 38, (unsigned char)1);
# 230 "atm.c"
        printf((char const * __restrict )"\n ENTER THE AMOUNT TO WITHDRAW: ");
        __CrestClearStack(118);
# 231 "atm.c"
        __CrestClearStack(117);
# 233 "atm.c"
        __CrestLoad(122, (unsigned long )(& withdraw), (long long )withdraw);
# 234 "atm.c"
        __CrestLoad(121, 0UL, 100LL);
# 235 "atm.c"
        __CrestApply2(120, 4, (long long )(withdraw % 100));
# 236 "atm.c"
        __CrestLoad(119, 0UL, 0LL);
# 237 "atm.c"
        __CrestApply2(118, 13, (long long )(withdraw % 100 != 0));
        {
        __CrestLoad(123, (unsigned long )(& withdraw), (long long )withdraw);
        __CrestLoad(122, (unsigned long )0, (long long )100);
        __CrestApply2(121, 4, (long long )(withdraw % 100));
        __CrestLoad(120, (unsigned long )0, (long long )0);
        __CrestApply2(119, 13, (long long )(withdraw % 100 != 0));
# 238 "atm.c"
        if (withdraw % 100 != 0) {
          __CrestBranch(124, 46, 1);
# 239 "atm.c"
          __CrestBranch(123, 40, (unsigned char)1);
# 240 "atm.c"
          printf((char const * __restrict )"\n PLEASE ENTER THE AMOUNT IN MULTIPLES OF 100");
          __CrestClearStack(126);
# 241 "atm.c"
          __CrestClearStack(125);
        } else {
          __CrestBranch(125, 47, 0);
# 243 "atm.c"
          __CrestBranch(124, 41, (unsigned char)0);
# 245 "atm.c"
          __CrestLoad(130, (unsigned long )(& withdraw), (long long )withdraw);
# 246 "atm.c"
          __CrestLoad(129, (unsigned long )(& amount), (long long )amount);
# 247 "atm.c"
          __CrestLoad(128, 0UL, 500LL);
# 248 "atm.c"
          __CrestApply2(127, 1, (long long )(amount - 500));
# 249 "atm.c"
          __CrestApply2(126, 14, (long long )(withdraw > amount - 500));
          {
          __CrestLoad(131, (unsigned long )(& withdraw), (long long )withdraw);
          __CrestLoad(130, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(129, (unsigned long )0, (long long )500);
          __CrestApply2(128, 1, (long long )(amount - 500));
          __CrestApply2(127, 14, (long long )(withdraw > amount - 500));
# 250 "atm.c"
          if (withdraw > amount - 500) {
            __CrestBranch(132, 49, 1);
# 251 "atm.c"
            __CrestBranch(131, 42, (unsigned char)1);
# 252 "atm.c"
            printf((char const * __restrict )"\n INSUFFICENT BALANCE");
            __CrestClearStack(134);
# 253 "atm.c"
            __CrestClearStack(133);
          } else {
            __CrestBranch(133, 50, 0);
# 255 "atm.c"
            __CrestBranch(132, 43, (unsigned char)0);
# 256 "atm.c"
            __CrestLoad(136, (unsigned long )(& amount), (long long )amount);
# 257 "atm.c"
            __CrestLoad(135, (unsigned long )(& withdraw), (long long )withdraw);
# 258 "atm.c"
            __CrestApply2(134, 1, (long long )(amount - withdraw));
# 259 "atm.c"
            __CrestStore(137, (unsigned long )(& amount));
            __CrestLoad(137, (unsigned long )(& amount), (long long )amount);
            __CrestLoad(136, (unsigned long )(& withdraw), (long long )withdraw);
            __CrestApply2(135, 1, (long long )(amount - withdraw));
            __CrestStore(138, (unsigned long )(& amount));
# 260 "atm.c"
            amount -= withdraw;
# 261 "atm.c"
            printf((char const * __restrict )"\n\n PLEASE COLLECT CASH");
            __CrestClearStack(139);
# 262 "atm.c"
            __CrestClearStack(138);
# 263 "atm.c"
            __CrestLoad(139, (unsigned long )(& amount), (long long )amount);
            __CrestLoad(140, (unsigned long )(& amount), (long long )amount);
# 264 "atm.c"
            printf((char const * __restrict )"\n YOUR CURRENT BALANCE IS%d", amount);
            __CrestClearStack(141);
# 265 "atm.c"
            __CrestClearStack(140);
          }
          }
        }
        }
      } else {
        __CrestBranch(117, 51, 0);
# 271 "atm.c"
        __CrestBranch(116, 44, (unsigned char)0);
# 273 "atm.c"
        __CrestLoad(143, (unsigned long )(& choice), (long long )choice);
# 274 "atm.c"
        __CrestLoad(142, 0UL, 3LL);
# 275 "atm.c"
        __CrestApply2(141, 12, (long long )(choice == 3));
        {
        __CrestLoad(144, (unsigned long )(& choice), (long long )choice);
        __CrestLoad(143, (unsigned long )0, (long long )3);
        __CrestApply2(142, 12, (long long )(choice == 3));
# 276 "atm.c"
        if (choice == 3) {
          __CrestBranch(145, 53, 1);
# 277 "atm.c"
          __CrestBranch(144, 45, (unsigned char)1);
# 278 "atm.c"
          printf((char const * __restrict )"\n ENTER THE AMOUNT TO DEPOSIT");
          __CrestClearStack(147);
# 279 "atm.c"
          __CrestClearStack(146);
# 280 "atm.c"
          __CrestLoad(149, (unsigned long )(& amount), (long long )amount);
# 281 "atm.c"
          __CrestLoad(148, (unsigned long )(& deposit), (long long )deposit);
# 282 "atm.c"
          __CrestApply2(147, 0, (long long )(amount + deposit));
# 283 "atm.c"
          __CrestStore(150, (unsigned long )(& amount));
          __CrestLoad(150, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(149, (unsigned long )(& deposit), (long long )deposit);
          __CrestApply2(148, 0, (long long )(amount + deposit));
          __CrestStore(151, (unsigned long )(& amount));
# 284 "atm.c"
          amount += deposit;
# 285 "atm.c"
          __CrestLoad(151, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(152, (unsigned long )(& amount), (long long )amount);
# 286 "atm.c"
          printf((char const * __restrict )"YOUR BALANCE IS %d", amount);
          __CrestClearStack(153);
# 287 "atm.c"
          __CrestClearStack(152);
        } else {
          __CrestBranch(146, 54, 0);
# 289 "atm.c"
          __CrestBranch(145, 46, (unsigned char)0);
# 291 "atm.c"
          __CrestLoad(155, (unsigned long )(& choice), (long long )choice);
# 292 "atm.c"
          __CrestLoad(154, 0UL, 4LL);
# 293 "atm.c"
          __CrestApply2(153, 12, (long long )(choice == 4));
          {
          __CrestLoad(156, (unsigned long )(& choice), (long long )choice);
          __CrestLoad(155, (unsigned long )0, (long long )4);
          __CrestApply2(154, 12, (long long )(choice == 4));
# 294 "atm.c"
          if (choice == 4) {
            __CrestBranch(157, 56, 1);
# 295 "atm.c"
            __CrestBranch(156, 47, (unsigned char)1);
# 296 "atm.c"
            printf((char const * __restrict )"\n THANK U USING ATM");
            __CrestClearStack(159);
# 297 "atm.c"
            __CrestClearStack(158);
          } else {
            __CrestBranch(158, 57, 0);
# 299 "atm.c"
            __CrestBranch(157, 48, (unsigned char)0);
# 300 "atm.c"
            printf((char const * __restrict )"\n INVALID CHOICE");
            __CrestClearStack(160);
# 301 "atm.c"
            __CrestClearStack(159);
          }
          }
        }
        }
      }
      }
    }
    }
  } else {
    __CrestBranch(98, 58, 0);
# 311 "atm.c"
    __CrestBranch(97, 49, (unsigned char)0);
  }
# 119 "atm.c"
  printf((char const * __restrict )"\n\n\n DO U WISH TO HAVE ANOTHER TRANSCATION?(y/n): \n");
  __CrestClearStack(161);
# 120 "atm.c"
  __CrestClearStack(160);
# 121 "atm.c"
  __CrestLoad(163, (unsigned long )(& transaction), (long long )transaction);
# 122 "atm.c"
  __CrestLoad(162, 0UL, 0LL);
# 123 "atm.c"
  __CrestApply2(161, 12, (long long )(transaction == 0));
  __CrestLoad(164, (unsigned long )(& transaction), (long long )transaction);
  __CrestLoad(163, (unsigned long )0, (long long )0);
  __CrestApply2(162, 12, (long long )(transaction == 0));
# 123 "atm.c"
  if (transaction == 0) {
    __CrestBranch(165, 61, 1);
# 124 "atm.c"
    __CrestBranch(164, 52, (unsigned char)1);
# 125 "atm.c"
    __CrestLoad(166, 0UL, 1LL);
# 126 "atm.c"
    __CrestStore(167, (unsigned long )(& k));
    __CrestLoad(167, (unsigned long )0, (long long )1);
    __CrestStore(168, (unsigned long )(& k));
# 124 "atm.c"
    k = 1;
  } else {
    __CrestBranch(166, 62, 0);
# 126 "atm.c"
    __CrestBranch(165, 53, (unsigned char)0);
  }
# 128 "atm.c"
  printf((char const * __restrict )"\n\n THANKS FOR USING OUT ATM SERVICE");
  __CrestClearStack(169);
# 129 "atm.c"
  __CrestClearStack(168);
# 130 "atm.c"
  __CrestReturn(169);
  __CrestReturn(170);
# 20 "atm.c"
  return;
}
}
# 23 "atm.c"
void __globinit_atm(void)
{


  {
  __CrestCall(171, 2);
# 28 "atm.c"
  __CrestInit();

  {
  __CrestReturn(172);
# 23 "atm.c"
  return;
  }
}
}
void __globinit_atm_cil(void)
{


  {
  __CrestInit();
}
}
