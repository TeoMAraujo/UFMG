#include <fstream>
#include <iostream>
#define BUFFER 5
#define UPPER 32

using namespace std;

void seeklinefilef(int n, char wordle[BUFFER]) {
    ifstream f("palavras.txt");
    char line[BUFFER + 2]; 
    
    for (int i = 0; i <= n; i++) {
        f.getline(line, BUFFER + 1);
    }
    
    for (int i = 0; i < BUFFER; i++) {
        wordle[i] = line[i];
    }
}

int wordlef(){
    int n;
    char unknown[BUFFER+1] = {'*','*','*','*','*', '\0'};
    cin >> n; 
    char wordle[BUFFER+1];
    seeklinefilef(n, wordle);
     
    char used[BUFFER * 5] = {0};
    int l = 0;
    
    for (int i = 0; i < 5; i++){ //5 tries
        int verificador[5] = {0, 0, 0, 0, 0};
        char input[BUFFER + 1];
        cin >> input;
        
        //compares each letter
        for (int j = 0; j < 5; j++){ 
            if (input[j] == wordle[j]){
                 unknown[j] = wordle[j];
                 verificador[j] = 1;
                for (int k = 0; k < BUFFER; k++){
                    if(unknown[j] == unknown[k] - UPPER){
                        unknown[k] = '*';
                    }
                }
            }
        }
        
        
        
        
        //verify if there's a letter in other position
        for (int j = 0; j < 5; j++){ 
            for (int k = 0; k < 5; k++){
                if (input[j] == wordle[k] && verificador[k] == 0){ //goes into every input of unknown, but maintaining wordle
                        unknown[j] = wordle[k] + UPPER; // make it into lowercase
                        verificador[j] = 1;
                }
            }
            if (verificador[j] == 0){
                used[l] = input[j];
                l++;
            }  
        }
        cout << unknown << " (" << used << ")\n";
        
        
        if (unknown[0] == input[0]){ 
            if (unknown[1] == input[1]){ 
                if (unknown[2] == input[2]){ 
                    if (unknown[3] == input[3]){  
                        if (unknown[4] == input[4]){
                            cout <<  "GANHOU!";
                            return 0;
                        }
                    }
                }
            }
        }
    }
    wordle[BUFFER] = '\0';
    cout << "PERDEU! " << wordle << '\n';
    return 0;
}

int main(){
    wordlef();
    return 0; 
}
