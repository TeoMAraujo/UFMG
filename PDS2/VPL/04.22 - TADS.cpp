#include <iostream>
#include <string.h>

using namespace std;

struct Data{
    int dia;
    int mes;
    int ano;
    
    //construct
    Data(dia, mes, ano){
        this->dia = dia;
        this->mes = mes;
        this->ano = ano;
    }
};

struct pessoa{
    string nome;
    string sobrenome;
    string estado;

    Data nascimento;
    Data desaparecimento;
    
    //construct
    pessoa(string nome, string sobrenome, Data nascimento, string estado, Data desaparecimento){
        this->nome;
        this->sobrenome;
        this->nascimento;
        this->estado;
        this->desaparecimento;
    }
    
    bool verify(string nome, string sobrenome){
        if (strcasecmp(nome, this->nome) = 0)){
            if (strcasecmp(sobrenome, this->sobrenome) = 0)){
                return true;
            }
        }
    }
};

struct Cnpd{
    pessoa array;
    int counter = 0;
    int l = 0;
   
    //construct
    Cnpd(int n){
        *array = new pessoa[n];
        this->l= n;
    }
    
    void insertpessoa(){
        pessoa x;
        data nasc, desa ;
        
        cin >> x.nome >> x.sobrenome >> x.nascimento.dia >> x.nascimento.mes >> x.nascimento.ano >> x.estado >> x.desaparecimento.dia >> x.desaparecimento.mes >> x.desaparecimento.ano;
        
        nasc(x.nascimento.dia, x.nascimento.mes, x.nascimento.ano);
        desa(x.desaparecimento.dia, x.desaparecimento.mes, x.desaparecimento.ano);
        
        this->array[counter](x.nome, x.sobrenome, nasc, x.estado, desa);
        
        cout << counter + 1 << array[counter]->nome << endl;
        counter++;
    }
    void search(string nome, string sobrenome){
        for (int i = 0; i < l; i++){
            if (array[i].verify(nome, sobrenome) = true)
                cout << "Encontrado(a):" << array[i].nome << array[i].sobrenome << "," << array[i].desaparecimento.dia << "/" <<  array[i].desaparecimento.mes << "/" <<  array[i].desaparecimento.ano << endl;
                break; 
        }else{
            cout << Nao Encontrado(a);
        }
    }
    
};


int main(){
    int n;
    cin >> n;
    Cnpd Lista(n);
    for (int i = 0; int i < n; n++){
        lista.insertpessoa(); 
    }
    cin << receba << sobre;
    
    Lista.search(receba, sobre);
}
