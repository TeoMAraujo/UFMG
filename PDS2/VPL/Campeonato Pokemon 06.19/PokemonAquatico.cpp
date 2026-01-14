#include "PokemonAquatico.hpp"

PokemonAquatico::PokemonAquatico(std::string nome, std::string tipo_ataque,
                                 double forca_ataque, double litros_jato) {
  pokemon(nome, tipo_ataque, forca_ataque);
  this->_litros_jato = litros_jato;
}
// Sobrescreve falar_tipo_ataque
void PokemonAquatico::falar_tipo_ataque() {
  pokemon::falar_tipo_ataque();
  std::cout << "Splash!\n";
}

// Calcula o dano específico do PokemonAquatico
double PokemonAquatico::ataque_aquatico() {
  return this->_forca_ataque + this->_litros_jato;
}

// Sobrescreve calcular_dano para usar o ataque específico
double PokemonAquatico::calcular_dano() { return this->ataque_aquatico(); }
