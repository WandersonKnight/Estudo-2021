#include <stdlib.h>
#include <stdio.h>

int Fibonacci(int posicao){
	
	if (posicao <= 1)
		return posicao;
	
	return Fibonacci(posicao - 1) + Fibonacci(posicao - 2);
	
}

int main(){
	
	printf("%d", Fibonacci(7));
	
	return 0;
	
}