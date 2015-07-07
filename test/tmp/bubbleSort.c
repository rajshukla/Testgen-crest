#include <stdio.h>
#include "crest.h"
 
int main()
{
  int array[100], n, c, d, swap;
 CREST_int(array);
CREST_int(n);

  printf("Enter number of elements\n");
 
  printf("Enter %d integers\n", n);
 
  
 
  for (c = 0 ; c < ( n - 1 ); c++)
  {
    for (d = 0 ; d < n - c - 1; d++)
    {
      if (array[d] > array[d+1]) /* For decreasing order use < */
      {
        swap       = array[d];
        array[d]   = array[d+1];
        array[d+1] = swap;
      }
    }
  }
 
  printf("Sorted list in ascending order:\n");
 
  for ( c = 0 ; c < n ; c++ )
     printf("%d\n", array[c]);
 
  return 0;
}
