#include<stdio.h>
#include <crest.h>
int main()

{
int A[10];
int l ;
int r ;
int key ;
CREST_int(A);
CREST_int(l);
CREST_int(r);
CREST_int(key);

b(A, l,  r, key) ;
return 0;

}

void b(int A[], int l, int r, int key)
{
    int m;
   
    while( l <= r )
    {
        m = l + (r-l)/2;
      
        if( A[m] == key ) 
            return m;
 
        if( A[m] < key ) 
            l = m + 1;
        else
            r = m - 1;
    }
 
    return -1;
}














