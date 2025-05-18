#include <iostream>

/*OBS: esta é uma lista unidericional, caso fosse bidirecional seria necessário adicionar um NodeL *previous no intuito de navegar pra frente e pra trás*/
struct NodeL {
    int data;
    NodeL *next;
};

struct List {
    NodeL *head = nullptr;
    NodeL *tail = nullptr;

    // metódos: .()
    void insertNode(int data);
    void removeNode(int data);
    void display();
};

void List::insertNode(int data) {   
    NodeL *aux = new NodeL;
    aux->data = data;
    aux->next = nullptr; // desaloca o ponteiro da aux, já que ela é apenas inserida

    if (head == nullptr){ // caso head não esteja apontando nada
        head = aux; 
        tail = aux;
    } else{ // como tail é um ponteiro ele vai apontar pra o next 
        tail->next = aux; //aponta a ultima variavel alocada p/ a proxima variavel que no caso é o aux
        tail = aux; // atribui o endereço de aux atual p/ tail já que é aultima, sendo que o aux não aponta pra nada agora, ele so vai apontar na próxima atribuição 
    }
}
void List::removeNode(int data){
    NodeL *current = head; //comeca pela head, já que como é uma lista unidirecional percorre ela a partir do 1° endereço sendo ele o head e dps acha os outros
    NodeL *previous = nullptr;
    
    while (current != nullptr) { //quando o current não apontar pra nada, ou seja for desalocado
        if (current->data == data){ // se achar oq tamo procurando
            if (previous == nullptr) { //head
                head = current->next;
            } else if(current ->next == nullptr){ //tail
                previous->next = nullptr;
                tail = previous; 
            } else {
                previous->next = current->next;
            }
            delete current; //induz a parada do while
            return;
        }
        previous = current;
        current = current->next; // pula pro endereço de memória da próxima variavel
    }
}
void List::display(){
    NodeL *aux = head;
    while (aux != nullptr) {
        std::cout << aux->data << "\t"; // mostra os valores na ordem tabulando eles
        aux = aux->next; // pula p/ o próximo e continua até chegar na tail
    }
    std::cout << "\n";
}
void List::reverse(){
    NodeL *current = head;
    NodeL *previous = nullptr;
    NodeL temp;
    while (current != nullptr){ // logica do remv node e não é o current next pq é so quando ele for o null ptr ele para
        if (previous == nullptr) { //head
            previous = current; //armazena o endereço do nodo 
            current = current->next; // vai p/ prox nodo
            previous->next = nullptr; //transforma em uma tail
        } else{
            previous = current; //armazena o endereço do nodo  
            current = current->next;
            previous->next = previous; // aponta p/ o nodo anterior 
        }
    }
    temp = head;
    head = tail;
    tail = temp;
}




