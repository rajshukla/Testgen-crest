#include<stdio.h>
#include <crest.h>
void heapsort(int[],int);
void heapify(int[],int);
void adjust(int[],int);
 
 
 
main()
{
 int n,i,a[50];
 system("clear");

CREST_int(a);
CREST_int(n);
 
 printf("\nEnter the limit:");
 
 printf("\nEnter the elements:");
 for(i=0;i<n;i++)
 
 heapSort(a,n);
 
 printf("\nThe Sorted Elements Are:\n");
 for(i=0;i<n;i++)
  printf("\t%d",a[i]);
 printf("\n");
}
 
void heapSort(int a[],int n)
{
 int i,t;
CREST_int(i);
 
 heapify(a,n);
 
 for(i=n-1;i>0;i--)
 {
  t = a[0];
  a[0] = a[i];
  a[i] = t;
  adjust(a,i);
 }
}
 
void heapify(int a[],int n)
{
 int k,i,j,item;

CREST_int(i);
CREST_int(k);
 
 for(k=1;k<n;k++)
 {
  item = a[k];
  i = k;
  j = (i-1)/2;
 
  while((i>0)&&(item>a[j]))
  {
   a[i] = a[j];
   i = j;
   j = (i-1)/2;
  }
  a[i] = item;
 }
}
 
void adjust(int a[],int n)
{
 int i,j,item;
 CREST_int(a);
CREST_int(i);
 j = 0;
 item = a[j];
 i = 2*j+1;
 
 while(i<=n-1)
 {
  if(i+1 <= n-1)
   if(a[i] <a[i+1])
    i++;
  if(item<a[i])
  {
   a[j] = a[i];
   j = i;
   i = 2*j+1;
  }
  else
   i=n;
 }
 a[j] = item;
}
