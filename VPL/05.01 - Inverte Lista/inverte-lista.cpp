#include "list.hpp"
#include <iostream>

void List::insertNode(int data) {
  Node *aux = new Node;
  aux->data = data;
  aux->next = nullptr;
  if (head == nullptr) {
    head = aux;
    tail = aux;
  } else {
    tail->next = aux;
    tail = aux;
  }
}

void List::display() {
  Node *aux = head;
  while (aux != nullptr) {
    cout << aux->data << " ";
    aux = aux->next;
  }
  cout << endl;
}

// Você deverá implementar apenas esse método
void List::inverte() {
  Node *previous = nullptr;
  Node *current = head;
  Node *next = nullptr;

  tail = head; // o head antigo se tornará o tail

  while (current != nullptr) {
    next = current->next;     // salva o próximo nó
    current->next = previous; // inverte o ponteiro
    previous = current;       // move o previous adiante
    current = next;           // move o current adiante
  }
  head = previous; // o último nó processado será o novo head
}
