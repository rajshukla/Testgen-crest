#include <stdio.h>
#include <crest.h>
int main()
{
  int n, array[1000], c, d, t;
  CREST_int(array);
  CREST_int(n);
 
  printf("Enter number of elements\n");
  
 
  printf("Enter %d integers\n", n);
 
  for (c = 0; c < n; c++) {
    scanf("%d", &array[c]);
  }
 
  for (c = 1 ; c <= n - 1; c++) {
    d = c;
 
    while ( d > 0 && array[d] < array[d-1]) {
      t          = array[d];
      array[d]   = array[d-1];
      array[d-1] = t;
 
      d--;
    }
  }
 
  printf("Sorted list in ascending order:\n");
 
  for (c = 0; c <= n - 1; c++) {
    printf("%d\n", array[c]);
  }
 
  return 0;
}
