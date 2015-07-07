#include<stdio.h>
#include <crest.h>


int main()
{
  int m,total, a, b, c, sum, per;
CREST_int(m);
CREST_int(a);
CREST_int(b);
CREST_int(c);

  printf("Enter total marks & marks obtained by the student in 3 subjects: ");
  printf("m=%d, a=%d, b=%d, c=%d\n",m,a,b,c);

  if((a>m)||(b>m)||(c>m))
    printf("\n\t!!Wrong data !!\n");

 else
  {  sum = a+b+c;
  
    if(sum>=240)
     printf("Grade : A\n");

   else if((sum>=180)&&(sum<240))
     printf("Grade : B\n");
  
   else if((sum>=120)&&(sum<180))
     printf("Grade : C\n"); 
  
   else
     printf("Result : Fail\n");
  }

return 0;
}










