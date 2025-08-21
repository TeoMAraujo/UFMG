#include "PokemonExplosivo.hpp"

PokemonExplosivo::PokemonExplosivo(std::string nome, std::string tipo_ataque,
                                   double forca_ataque,
                                   double temperatura_explosao) {
  pokemon(nome, tipo_ataque, força_ataque);
  this->_temperatura_explosao = temperatura_explosao;
} 
void PokemonExplosivo::falar_tipo_ataque() {
    pokemon::falar_tipo_ataque(); // Chama a implementação da classe base
    std::cout << "Boom!\n";
}
// Calcula o dano específico do ataque explosivo
double PokemonExplosivo::ataque_explosivo() {
    // Adicionado para evitar divisão por zero
    if (this->_temperatura_explosao == 0) {
        return this->_forca_ataque;
    }
    return this->_forca_ataque / this->_temperatura_explosao;
}
// Sobrescreve calcular_dano para usar o método de ataque específico
double PokemonExplosivo::calcular_dano() {
    return this->ataque_explosivo();
}

