/*

 * C Program to Display the ATM Transaction

 */

#include <stdio.h>
# include <crest.h>

 

int amount=1000, deposit, withdraw;

int choice, pin, k;

int transaction =1;

 

void main()

{
CREST_int(pin);
CREST_int(k);
CREST_int(choice);

	while (!(pin == 1520))

	{

		printf("ENTER YOUR SECRET PIN NUMBER:");


		if (pin != 1520)

		printf("PLEASE ENTER VALID PASSWORD\n");

	}

	while (!(k == 1))
	{

		printf("********Welcome to ATM Service**************\n");

		printf("1. Check Balance\n");

		printf("2. Withdraw Cash\n");

		printf("3. Deposit Cash\n");

		printf("4. Quit\n");

		printf("******************?**************************?*\n\n");

		printf("Enter your choice: ");


		if(choice == 1)
		{

			printf("\n YOUR BALANCE IN Rs : %d ", amount);

                }

		else if(choice == 2)
                  {
			printf("\n ENTER THE AMOUNT TO WITHDRAW: ");


			if (withdraw % 100 != 0)

			{

				printf("\n PLEASE ENTER THE AMOUNT IN MULTIPLES OF 100");

			}

			else if (withdraw >(amount - 500))

			{

				printf("\n INSUFFICENT BALANCE");

			}

			else

			{

				amount = amount - withdraw;

				printf("\n\n PLEASE COLLECT CASH");

				printf("\n YOUR CURRENT BALANCE IS%d", amount);

			}

                  }

		else if(choice ==3)
                  {
			printf("\n ENTER THE AMOUNT TO DEPOSIT");


                        amount = amount + deposit;

			printf("YOUR BALANCE IS %d", amount);

                  }
		
              else if(choice == 4)
			printf("\n THANK U USING ATM");

                else
			printf("\n INVALID CHOICE");

		}

		printf("\n\n\n DO U WISH TO HAVE ANOTHER TRANSCATION?(y/n): \n");



		if (transaction == 0)
                    k = 1;



	printf("\n\n THANKS FOR USING OUT ATM SERVICE");

}


