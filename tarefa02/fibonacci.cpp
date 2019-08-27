#include <cstdio>
#include <cstdlib>

int count=0;

long long int fibonacci (int n)
{
	count++;
	if (n<2)
	{
		return n;
	}
	else
	{
		return fibonacci(n-2)+fibonacci(n-1);
	}
}

int main(int argc, char const *argv[])
{
	int  Fn;
	long long int total;

	while(true)
	{
		count=0;
		printf("Digite um numero n: \n" );
		fscanf(stdin, "%d", &Fn);
		if (Fn < 0)
			break;
		total=fibonacci(Fn);

		printf("fibonacci:%lld\nN de chamadas:%d\n", total, count);
	}
	return 0;
}