 #include <iostream>
#include <deque>

using namespace std;

class Renato{
    public:
    static int automatic;
    static int counter;
    int id;
    Renato(){
        automatic++;
        counter++;
        this->id = this->automatic;
    } // so aceita n®s negativos e incrementa diretamente no id, e acrescenta no count
    Renato(char a){
        counter++;
    }
    
};
int Renato::automatic = 0;
int Renato::counter = 0;

int main(){
    deque <Renato*> lista; 
    char input;
    int position;
    while (true){
        cin >> input;
        switch(input){
            case 'A':{ //adiciona um novo objeto com id automático no final da lista. Deve ser impresso o id e o endereço de memória do objeto criado.
                Renato *variable = new Renato();
                lista.push_back(variable);
                cout << lista[lista.size()-1]->id << " " << &lista[lista.size()-1] << endl;
                break;
            }
            case 'C':{ // adiciona um novo objeto com id fornecido no início da lista. Deve ser impresso o id e o endereço de memória do objeto criado o "ERRO" caso o id não seja negativo.
                cin >> position;
                if (position <= -1){
                    char a = 0;
                    Renato *variable = new Renato(a);
                    variable->id = position;
                    lista.push_front(variable);
                    cout << variable->id  << " " << &lista[0]<< endl;
                }else{
                    cout << "ERRO" <<endl;
                }
                break;
            }
            case 'R':{ // remove (e deleta) um objeto da frente da lista. Deve ser impresso o id e o endereço endereço de memória do objeto removido. Caso a lista esteja vazia deve ser impresso "ERRO"
                if (lista.empty()){
                    cout << "ERRO"<< endl;
                } else {
                    Renato* removed = lista.front();
                    cout << removed->id << " " << removed << endl;
                    delete removed;
                    lista.pop_front();
                }
               
                Renato::counter--;
                break;
            }
            case 'N':{ // imprime o valor do contador com número de objetos existentes.
                cout << Renato::counter << endl;
                break;
            }
            case 'P':{ // P <i> imprime o id e o endereço de memória do i-ésimo elemento da lista. Se i for um valor inválido (menor que 1 ou maior que o número de elementos) seu programa deverá imprimir "ERRO"
                cin >> position;
                if (position < 1 || position > (int)lista.size()) {
                    cout << "ERRO" << endl;
                } else {
                    cout << lista[position-1]->id<< " " << &lista[position-1]<< endl;
                break;
                }
            }
            case 'L':{ // Imprime, para todos os elementos da lista, o id e o endereço de memória do objeto, sendo um elemento por linha com quebra de linha no final. 
                for(Renato *p : lista)
                    cout << p->id << " "<< p<< endl;
                break;
            }
            case 'E': {// termina a execução do programa.
                return 0;
            }
        }
    }
}
       
