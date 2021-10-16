#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void PrintArray(int array[], int length){
	
	for(int i = 0; i < length; i++)
		printf("%d", array[i]);

}

void BubbleSort(int array[], int length){
	
	if(length == 0)
		return;
	
	for(int i = 0; i < length - 1; i++){
		
		for(int j = 0; j < length - 1; j++){
			
			int aux;
			
			if(array[j] > array[j + 1]){
				
				aux = array[j];
				
				array[j] = array[j + 1];
				array[j + 1] = aux;
				
			}
			
		}
		
		length--;
		
	}
	
}

int BinarySearch(int array[], int length, int choice){
	
	int inicio = 0;
	int final = length - 1;
	int meio;
	
	while(1){
		
		meio = (inicio + final) / 2;
		
		if(choice == array[meio])
			return meio;
			
		else if(choice > array[meio])
			inicio = meio + 1;
		
		else if(choice < array[meio])
			final = meio - 1;
			
		if(meio <= 0 || meio >= (length - 1))
			return -1;
		
	}
	
	return -1;
	
}

int main(){
	
	int array[] = {1,3,5,7,4,2,9};
	char choiceStr[10];
	int choice;
	
	int length = sizeof(array) / sizeof(array[0]);	
	
	int arrayPosition;
	
	BubbleSort(array, length);
	PrintArray(array, length);
	
	printf("\nChoose a number between 0-9, if the number exists it's position will be returned\n");
	fgets(choiceStr, 10, stdin);
	
	choice = atoi(choiceStr);
	arrayPosition =  BinarySearch(array, length, choice);
	
	if(arrayPosition < 0)
		printf("Value not found");
	
	else 
		printf("Selected value position: %d", arrayPosition);
	
	return 0;
	
}