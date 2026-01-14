#ifndef POKEMONELETRICO_HPP
#define POKEMONELETRICO_HPP

#include "Pokemon.hpp"

class PokemonEletrico : public Pokemon {
private:
  double _potencia_raio; // double _potencia_raio;

public:
  PokemonEletrico(std::string nome, std::string tipo_ataque,
                  double forca_ataque,
                  double potencia_raio); // método construtor para a 
                                         // nicialização dos atributos.
  void
  falar_tipo_ataque() override; // sobrescrita do método da superclasse. Além de e
                                // crever o tipo do ataque também escreve "B
                                // zzz!" (seguido de quebra de linha).
  double calcular_dano() override; // sobrescrita do método da superclasse.
  double
  ataque_eletrico(); // calcula e retorna o valor do dano do ataque específico.
};

#endif
