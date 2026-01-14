#include <iostream>

int zerocancelaf(int *zerotocancel, int count){
      int j= 0;
      int *number = new int[count];  
      
      for (int i = 0; i < count; i++){
          std::cin >> zerotocancel[i];
          if (zerotocancel[i] == 0){
              number[j] = 0;
              j--;
              if (j == -1){
                  continue; /*para nao dar memory leak*/
                  j = 0;
              }
          }else{
                number[j] = zerotocancel[i];
                j++;
              
            }
      }
      int soma = 0;
      for (int k = 0; k < j; k++) {
         soma += number[k];
      }
      return soma;
  }

  int main(){
      int count = 0;
      std::cin >> count;
      int *zerotocancel = new int[count];    
      std::cout << zerocancelaf(zerotocancel, count); 

  }

