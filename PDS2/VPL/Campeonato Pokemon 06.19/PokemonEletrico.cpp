#include "PokemonEletrico.hpp"

PokemonEletrico::PokemonEletrico(std::string nome, std::string tipo_ataque,
                                 double forca_ataque, double potencia_raio) {
  pokemon(nome, tipo_ataque, força_ataque);
  this->_potencia_raio = potencia_raio;
} // método construtor para a 
  // nicialização dos atributos.
void PokemonEletrico::falar_tipo_ataque() override {
  pokemon::falar_tipo_ataque();
  std::cout << "Bzz!\n";
}
double PokemonEletrico::calcular_dano() override {
  return this->ataque_eletrico();
} // sobrescrita do método da superclasse.
double PokemonEletrico::ataque_eletrico() {
  return this->_forca_ataque * this->_potencia_raio;
} // calcula e retorna o valor do
  // dano do ataque específico.
