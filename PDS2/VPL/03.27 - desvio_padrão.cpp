#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

float mediaaritmeticaf(float pog[], int x){
    float receba = 0.0f;
    for (int i = 0; i < x; i++){
        receba+=pog[i];
    }
    return receba/x;
}
float desviopadraof(float pog[], int x){
    float receba1 = mediaaritmeticaf(pog,x);
    for (int i = 0; i < x; i++){
        pog [i] = pow(pog[i] - receba1, 2);
    }
    for(int i = 1; i < x; i++){
        pog[0] += pog[i];
    }
    return sqrt(pog[0]/x);
}


int main(){
    int x = 0;
    cin >> x;
    float *pog = new float[x]; 
    for (int i = 0; i < x; i++){ 
        cin >> pog[i]; 
    } 
    cout << fixed << setprecision(6) << mediaaritmeticaf(pog, x) << "\n"; 
    cout << fixed << setprecision(4) << desviopadraof(pog,x) << "\n"; 
    return 0; 
}

