/* MDH WCET BENCHMARK SUITE */
/*
* Changes: CS 2006/05/19: Changed loop bound from constant to variable.
*/
#include <stdio.h>
#include <crest.h>
int fac (int n)
{
if (n == 0)
return 1;
else
return (n +fac (n-1));
}
int main (void)
{
int i;
CREST_int(i) ;
int s = 0;
int n;
n = 5;
for (i = fac(i); i <= n; i++)
s += fac (i);
return (s);
}
