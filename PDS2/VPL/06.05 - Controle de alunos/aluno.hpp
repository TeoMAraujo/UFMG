#define ALUNO_H
#ifndef Aluno_H

#include <iostream>
#include <string>
#include <vector>

class Aluno {
private:
  std::string nome;
  int matricula;
  std::vector<int> notas;

public:
  Aluno(std::string nome, int matricula, std::vector<int> notas);

  void getnome();
  void getmatriculas();
  void getnota();

  int calcularMedia();
  int notaMaxima();
}
#endif
