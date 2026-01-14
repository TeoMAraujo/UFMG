#include <iostream>
#include "tinder.hpp"

int main() {
    std::cout << "Bem vindo myTINDER!\n";

    Pessoa u = Pessoa(1, "Ben", 39, 'M', 'M', 'O');
    Tinder tdr = Tinder(u);
    tdr.addPessoa(2, "Jef", 22, 'M', 'R', 'M');
    tdr.addPessoa(3, "Lis", 19, 'F', 'L', 'M');
    tdr.addPessoa(4, "Emi", 24, 'F', 'M', 'E');
    tdr.addPessoa(5, "Mia", 24, 'F', 'L', 'E');
    tdr.addPreferencias('F', 'L', 'M');
    tdr.listarMatches();

    std::cout << "Bye TINDER!\n";
}

