#include <stdio.h>
#include <crest.h>
int main ()
{
 int *a ;
 int *b ;
int lda ;
int n ;
int *ipvt ;
int job ;
int roll ;

dgesl(int *a,int lda,int n,int *ipvt,int *b,int job,int roll) ;

return 0 ;
}



void dgesl(int *a,int lda,int n,int *ipvt,int *b,int job,int roll)



    {
    int    t;
    int     k,kb,l,nm1;

CREST_int(roll);
CREST_int(job);
CREST_int(k);
CREST_int(kb);
CREST_int(l);
CREST_int(nm1);

    if (roll>=1)
        {
        nm1 = n - 1;
        if (job == 0)
            {

            if (nm1 >= 1)
                for (k = 0; k < nm1; k++)
                    {
                    l = ipvt[k];
                    t = b[l];
                    if (!(l == k))
                        {
                        b[l] = b[k];
                        b[k] = t;
                        }
                    daxpy_r(n-(k+1),t,&a[lda*k+k+1],1,&b[k+1],1);
                    }



            for (kb = 0; kb < n; kb++)
                { 
                k = n - (kb + 1);
                b[k] = b[k]/a[lda*k+k];
                t = -b[k];
                daxpy_r(k,t,&a[lda*k+0],1,&b[0],1);
                }
            }

    
        else
            {

            for (k = 0; k < n; k++)
                {
                t = ddot_r(k,&a[lda*k+0],1,&b[0],1);
                b[k] = (b[k] - t)/a[lda*k+k];
                }



            if (nm1 >= 1)
                for (kb = 1; kb < nm1; kb++)
                    {
                    k = n - (kb+1);
                    b[k] = b[k] + ddot_r(n-(k+1),&a[lda*k+k+1],1,&b[k+1],1);
                    l = ipvt[k];
                    if (!(l == k))
                        {
                        t = b[l];
                        b[l] = b[k];
                        b[k] = t;
                        }
                    }
            }
        }
    else
        {
        nm1 = n - 1;
        if (job == 0)
            {

            if (nm1 >= 1)
                for (k = 0; k < nm1; k++)
                    { 
                    l = ipvt[k];
                    t = b[l];
                    if (!(l == k))
                        {
                        b[l] = b[k];
                        b[k] = t;
                        }

                    daxpy_ur(n-(k+1),t,&a[lda*k+k+1],1,&b[k+1],1);

                    }



            for (kb = 0; kb < n; kb++)
                {
                k = n - (kb + 1);
                b[k] = b[k]/a[lda*k+k];
                t = -b[k];
                daxpy_ur(k,t,&a[lda*k+0],1,&b[0],1);
                }
            }
        else
            {




            for (k = 0; k < n; k++)
                {
                t = ddot_ur(k,&a[lda*k+0],1,&b[0],1);
                b[k] = (b[k] - t)/a[lda*k+k];
                }



            if (nm1 >= 1)
                for (kb = 1; kb < nm1; kb++)
                    {
                    k = n - (kb+1);
                    b[k] = b[k] + ddot_ur(n-(k+1),&a[lda*k+k+1],1,&b[k+1],1);
                    l = ipvt[k];
                    if (!(l == k))
                        {
                        t = b[l];
                        b[l] = b[k];
                        b[k] = t;
                        }
                    }
            }
        }
    }

