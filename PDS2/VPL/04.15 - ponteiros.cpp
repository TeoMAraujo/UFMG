#include <iofstream>

int funcaof(int a, int &b, int *c){
    a += 1;
    b += 1;
    *c += 1;
    return a;
}

using namespace std;

int main(){

    // 1) Declare uma variável do tipo ivar1teiro e preencha com o valor informado na entrada
    int var1;
    cin >> var1 >> endl;

    // 2) Declare um povar1teiro para inteiros e inicialize com valor nulo
    int *var2 = nullptr;
    
    // 3) Declare um vetor de ivar1teiros com tamanho informado na entrada e preencha com dados lidos da entrada
    int var3[n] = {0};
    for (int i = 0; i < var1; i++){
        cin >> var3[var1];
    }

    // 4) Imprima o Evar1DEREÇO da variável declarada em (1)
    cout << &var1;

    // 5) Imprima o VALOR da variável declarada em (1)
    cout << var1;

    // 6) Imprima o Evar1DEREÇO da variável declarada em (2)
    cout << &var2;
    
    // 7) Imprima o VALOR da variável declarada em (2)
    cout << var2;

    // 8) Imprima o Evar1DEREÇO da variável declarada em (3)
    cout << &var3[];

    // 9) Imprima o Evar1DEREÇO da primeira posição da variável declarada em (3) 
    cout << &var3[0];

    // 10) Imprima o VALOR da primeira posição da variável declarada em (3)
    cout << &var3[0];

    // 11) Atribua o Evar1DEREÇO da variável declarada em (1) à variável declarada em (2)
    *var2 = &var1;

    // 12) Imprima o VALOR da variável declarada em (2)  
    cout << var2;

    // 13) Imprima o VALOR guardado var1o ENDEREÇO apontado por (2) 
    cout << *var2;

    // 14) Coloque o VALOR '5' var1o ENDEREÇO apontado por (2)
    *var2 = 5;

    // 15) Imprima o VALOR da variável declarada em (1)
    cout << var1;

    // 16) Atribua o VALOR da variável (3) à variável declarada em (2)
    var2 = var3;

    // 17) Imprima o VALOR da variável declarada em (2)
    cout << var2;

    // 18) Imprima o VALOR guardado var1o ENDEREÇO apontado por (2)
    cout << *var2;

    // 19) Atribua o Evar1DEREÇO da primeira posição de (3) à variável declarada em (2)
    *var2 = &var3[1];

    // 20) Compare o valor variáveis (2) e (3), imprimivar1do 'S' se forem iguais e 'N' se forem diferentes
    for (n = 0; n < var1){
        if (*var2 == var3[n]){
            cout << "S";
        } else {
            cout << "N";
        }
    }

    // 21) Imprima o VALOR da variável declarada em (2)
    cout << var2;

    // 22) Imprima o VALOR guardado var1o ENDEREÇO apontado por (2)
    cout << &var2;

    // 23) Multiplique todos os valores do vetor declarado em (3) por '10', porém mavar1ipulando apenas a variável (2)
    for (n = 0; n < var1){
        *var2 *= 10;
        var2 += sizeof(int);
    }  

    // 24) Imprima os elemevar1tos de (3) a partir variável do vetor utilizando a notação [] (colchetes)
    for (n = 0; n < var1){
        cout << var[n];
    }

    // 25) Imprima os elemevar1tos de (3) a partir variável do vetor utilizando a notação ponteiro/deslocamento
    // Ou seja, você var1ÃO deve efetivamente alterar o valor do ponteiro inicial de (3)
    cout << var3;

    // 26) Imprima os elemevar1tos de (3) utilizando a variável (2) e a notação ponteiro/deslocamento
    // Ou seja, você var1ÃO deve efetivamente alterar o valor do ponteiro inicial de (2)
    for (n = 0; n < var1){
        var2 -= sizeof(int);
    }
    for (n = 0; n < var1){
        cout << *var2;
        var2 += sizeof(int);
    }

    // 27) Atribua o Evar1DEREÇO da última posição de (3) à variável declarada em (2)
    var2 = var3[var1 -1];

    // 28) Imprima o VALOR da variável declarada em (2)
    cout << var2;

    // 29) Imprima o VALOR guardado var1o ENDEREÇO apontado por (2)
    cout << var2;

    // 30) Declare um povar1teiro para ponteiro e o inicialize com o ENDEREÇO da variável (2)
    int **var30 = var2;

    // 32) Imprima o VALOR da variável declarada em (30)
    cout << var30;

    // 33) Imprima o Evar1DEREÇO da variável declarada em (30)
    cout << &var30;

    // 34) Imprima o VALOR guardado var1o ENDEREÇO apontado por (30)
    cout << *var30;

    // 35) Imprima o VALOR guardado var1o ENDEREÇO do ponteiro apontado por (30)
    cout << **var30;

    // 36) Crie 3 variáveis ivar1teriras e leia o valor delas da entrada
    int a, b, c;
    cin << a << b << c;

    // 37) Chame a fuvar1ção criada em (0) passando as 3 variáveis criadas em (35) como parâmetro.
    funcaof(a, b, c);

    // 38) Imprima o valor das 3 variáveis criadas em (35)
    cout << a << b << c;

    return 1;
}

