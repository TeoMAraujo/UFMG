#include <fstream>
#include <iostream>
#define BUFFER 5
#define LOWER 32

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
    
    char already_used[26] = {0};
    char used[BUFFER * 5] = {0};
        int l = 0;
    
    for (int i = 0; i < 5; i++){ //5 tries
        int verificador[5] = {0, 0, 0, 0, 0};
        char input[BUFFER + 1];
        cin >> input;
        
        // resets if lowercase    
        for (int j = 0; j < 5; j++){
            for (int k = 0; k < 5; k++){
                if(unknown[k] > 97 && unknown[k] < 123 ){
                    unknown[j] = '*';
                }
            }
        }
        
        //If letter matches letter swap '*'
        for (int j = 0; j < 5; j++){ 
            if (input[j] == wordle[j]){
                 unknown[j] = wordle[j];
                 verificador[j] = 1;
            }
        }
        
        //verify if there's a letter in other position
        for (int j = 0; j < 5; j++){ 
            for (int k = 0; k < 5; k++){
                if (input[j] == wordle[k] && verificador[j] == 0){ //goes into every input of unknown, but maintaining wordle
                        unknown[j] = wordle[k] + LOWER; // make it into lowercase
                        verificador[j] = 1;
                }
            }
              if (verificador[j] == 0){ //if it's used do not at to used
                char upper = input[j];         
                if (already_used[upper - 'A'] == 0){
                    used[l] = upper;
                    already_used[upper - 'A'] = 1;
                    l++;
                }
            }    
        }
        cout << unknown << " (" << used << ")\n";
        
        //win statment
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
        //resets for debug
        for (int t = 0; t < 5; t++){
            verificador[t] = 0;
        }
    }
    //lost statment
    wordle[BUFFER] = '\0';
    cout << "PERDEU! " << wordle << '\n';
    return 0;
}

int main(){
    wordlef();
    return 0; 
}
