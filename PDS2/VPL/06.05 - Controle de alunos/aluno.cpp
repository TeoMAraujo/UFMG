#include "aluno.hpp"

Aluno::Aluno(std::string nome, int matricula, std::vector<int> notas) {
  this->nome = nome;
  this->matricula = matricula;
  this->notas = notas;
}

std::string Aluno::getnome() { return this->nome; }

int Aluno::getmatriculas() { return this->matricula; }

int Aluno::getnota(i) { return this->notas[i] }

int Aluno::calcularMedia() {
  float media;
  for (int &i : this->notas) {
    media += notas[i];
  }
  int i = notas.size();
  media /= i;
}

int Aluno::notaMaxima() {
  int maior;
  for (int &i : this->notas) {
    maior = notas[0];
    if (maior < notas[i]) {
      maior = notas[i];
    }
  }
  return maior;
}

int Aluno::notaMinima() {
  int menor;
  for (int &i : this->notas) {
    menor = notas[0];
    if (menor < notas[i]) {
      menor = notas[i];
    }
  }
  return menor;
}
