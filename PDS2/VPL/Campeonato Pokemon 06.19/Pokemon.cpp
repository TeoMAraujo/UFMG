#include "Pokemon.hpp"

pokemon::pokemon(string nome, string tipo_ataque, double forca_ataque) {
  this->_nome = nome;
  this->_tipo_ataque = tipo_ataque;
  this->_forca_ataque = forca_ataque;
};

void pokemon::falar_nome() { std::cout << _nome << "!\n"; }
virtual void pokemon::falar_tipo_ataque() {
  std::cout << _tipo_ataque << "!\n";
}
void pokemon::imprimir_status() {
  falar_nome();
  std::cout << "Energia" << _energia << "\n";
}
void pokemon::imprimir_informacoes() {
  falar_nome();
  std::cout << "Tipo de Ataque" << _tipo_ataque;
  std::cout << "Dano" << _forca_ataque;
  std::cout << "Energia" << _energia << "\n";
}

void pokemon::atacar(pokemon *outro_pokemon) {
  falar_nome();
  std::cout << "Tipo de Ataque" << this->_tipo_ataque;
  std::cout << "Dano" << this->_forca_ataque;
  outro_pokemon->receber_dano(_forca_ataque);
}
void pokemon::receber_dano(double valor_dano) {
  this->_energia = this->_energia - valor_dano;
  if (this->energia == 0) {
    std::cout << this->_nome << "morreu! \n";
  }
}
