
struct NodeT {
    int data;
    NodeT *esq;
    NodeT *dir;
};

struct BST {
    NodeT *root = nullptr;

    NodeT* createNode(int data);
    void insertNodeHelper(NodeT* root, int data); //se fosse classe seriam private, ja que a ela em si não altera na lista em si elas servem de verificadores que auxiliam os outros métodos
    
    void insertNode(int data);
    void removeNode(int data);
    void display();
};

NodeT *BST::createNode(int data){
    NodeT* aux new NodeT;
    aux->data = data;
    aux->esq = nullptr;
    aux->dir = nullptr;
    
    return aux;

};

void BST::insertNodeHelper(NodeT* n, int data){// ele vai chamando recursivamente até achar um ramo que seja maior ou menor respectivamente mas q se não apontar p/ nada quer dizer que achou o local p/ apontar, dae a função para qnd ele cria um nodo o qual o nodo anterior é atribuido o endereço dele
    if (data < n->data) {
        if (n->esq == nullptr) {
            n->esq = createNode(data);
        } else {
            insertNodeHelper(n->esq, data);
        }
    } else if (data > n->data) {
        if (n->dir == nullptr) {
            n->dir = createNode(data);
        } else {
            insertNodeHelper(n->dir, data);
        }
    }
};


void BST::insertNode(int data) {
    if (root != nullptr) {
        insertNodeHelper(root, data);
    } else {
       root = createNode(data);
    }
}


