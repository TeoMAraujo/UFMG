#include "Aluno.hpp"

int main() {
  std::vector<Aluno> lista;
  std::string nome;
  int matricula;
  std::vector<int> notas;

  while (nome != "END") {
    std::cin >> nome;
    if (nome == "end") {
      break;
    } else {
      std::cin >> matricula;
      while (true) {
        cin >> flag;
        if (flag == -1) {
          break;
        } else {
          notas.push_back(flag);
        }
        lista.emplace_back(nome, matricula, notas);
      }
    }
  }
  while (aluno & iterator : lista) {
    std::cout << lista.getMatricula << lista.getAluno;
    while (int i = 0; lista.getnotas(i) != -1; i++) {
      std::cout << lista.getnotas(i);
    }
    std::cout << "\n" << lista.calcularMedia << lista.notaMaxima << lista.notaMinima;
  }
}
