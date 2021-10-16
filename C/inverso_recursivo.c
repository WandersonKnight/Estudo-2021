#include <stdlib.h>
#include <stdio.h>

int NumeroInverso(int numero){
	
	static int soma = 0;
	int aux;
	
	if (numero > 1){
		
		aux = numero % 10;
		soma = (soma * 10) + aux;
		NumeroInverso(numero / 10);
		
	}
	else
		return soma;

}

int main(){
	
	printf("%d", NumeroInverso(34511));
	
	return 0;
	
}