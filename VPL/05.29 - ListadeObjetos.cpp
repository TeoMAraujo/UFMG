#include <deque>
#include <iostream>

using namespace std;

class Renato {
public:
  static int automatic;
  static int counter;
  int id;

  Renato() {
    automatic++;
    counter++;
    this->id = automatic;
  }

  Renato(char) { counter++; }

  ~Renato() { counter--; }
};

int Renato::automatic = 0;
int Renato::counter = 0;

int main() {
  deque<Renato *> lista;
  char input;
  int position;

  while (true) {
    cin >> input;

    switch (input) {
    case 'A': {
      Renato *variable = new Renato();
      lista.push_back(variable);
      cout << variable->id << " " << variable << endl;
      break;
    }

    case 'C': {
      cin >> position;
      if (position <= -1) {
        Renato *variable = new Renato('x');
        variable->id = position;
        lista.push_front(variable);
        cout << variable->id << " " << variable << endl;
      } else {
        cout << "ERRO" << endl;
      }
      break;
    }

    case 'R': {
      if (lista.empty()) {
        cout << "ERRO" << endl;
      } else {
        Renato *removed = lista.front();
        cout << removed->id << " " << removed << endl;
        delete removed;
        lista.pop_front();
      }
      break;
    }

    case 'N': {
      cout << Renato::counter << endl;
      break;
    }

    case 'P': {
      cin >> position;
      if (position < 1 || position > (int)lista.size()) {
        cout << "ERRO" << endl;
      } else {
        Renato *ptr = lista[position - 1];
        cout << ptr->id << " " << ptr << endl;
      }
      break;
    }

    case 'L': {
      for (Renato *p : lista)
        cout << p->id << " " << p << endl;
      break;
    }

    case 'E': {
      // Libera memória antes de sair
      for (Renato *p : lista)
        delete p;
      return 0;
    }
    }
  }
}
