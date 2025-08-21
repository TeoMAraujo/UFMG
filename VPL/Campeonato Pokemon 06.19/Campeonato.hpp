#ifndef CAMPEONATO_HPP
#define CAMPEONATO_HPP

#include "Treinador.hpp"
#include <vector>

class Campeonato {
private:
  std::vector<Treinador *> _treinadores; // vector<Treinador*> _treinadores;

public:
  Campeonato();
  ~Campeonato();

  void cadastrar_treinador(std::string nome) {
    _treinadores->emplace_back(nome);
  }; // método para cadastro de treinadores
  void imprimir_informacoes_treinador(
      int idt); // método que imprime as informações de um determinado treinador
    _treinadores[idt]->imprimir_informacoes();
  void executar_batalha(int idt1, int idpk1, int idt2,
                        int idpk2); // executa uma batalha considerandos os Treinadores/Pokemons informados
};

#endif
