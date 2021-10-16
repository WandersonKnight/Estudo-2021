#include <stdlib.h>
#include <stdio.h>

int Exponencial(int base, int potencia){
	
	if (potencia > 0)
		return base * Exponencial(base, potencia - 1);
	
	else if (potencia == 0)
		return 1;

}

int main(){
	
	printf("%d", Exponencial(4, 4));
	
	return 0;
	
}