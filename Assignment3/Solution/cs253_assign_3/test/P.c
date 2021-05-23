#include <stdio.h>

int main()
{
    int a,b;
    scanf("%d %d",&a,&b);
    int add = a+b;
	int subtract = a-b;
    
    if(a > 20000)
    {
        printf("[message] a > 20000\n");
        if(b > 20000)
        {
            printf("[message] b > 20000\n");
        }
        else
        {
            printf("[message] b < 20000\n");
        }
    }
    else
    {
        printf("[message] a < 20000\n");
        if(b > 20000)
        {
            printf("[message] b > 20000\n");
        }
        else 
        {
            printf("[message] b < 20000\n");
        }
    }
    
	if(add < 20000)
	{
		printf("[message] a+b < 20000\n");
		if(add < 10000)
		{
			printf("[message] a+b < 10000\n");
		}
		else 
		{
			printf("[message] a+b > 10000\n");
		}
	}
	else 
	{
		printf("[message] a+b > 20000\n");
	}

	if( subtract < 0)
	{
		printf("[message] a < b\n");
	}
	else 
	{
		printf("[message] a > b\n");
	}
  
return 0;
}