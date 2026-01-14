#include "Treinador.hpp"

Treinador::Treinador(std::string nome) { this->_nome = nome };
Treinador::~Treinador();
}
void Treinador::cadastrar_pokemon_eletrico(std::string nome,
                                           std::string tipo_ataque,
                                           double forca_ataque,
                                           double potencia_raio) {
  _pokemons->push_back(
      PokemonEletrico(nome, tipo_ataque, forca_ataque, potencia_raio));
}
void Treinador::cadastrar_pokemon_aquatico(std::string nome,
                                           std::string tipo_ataque,
                                           double forca_ataque,
                                           double litros_jato) {
  _pokemons->push_back(
      PokemonAquatico(nome, tipo_ataque, forca_ataque, litros_jato));
}
void Treinador::cadastrar_pokemon_explosivo(std::string nome,
                                            std::string tipo_ataque,
                                            double forca_ataque,
                                            double temperatura_explosao) {
  _pokemons->push_back(
      PokemonExplosivo(nome, tipo_ataque, forca_ataque, temperatura_explosao));
}

Pokemon *Treinador::usar_pokemon(
    int idpk) { // retorna um pokemon específico a partir do índice informado.
  return pokemon[idpk];
}
void Treinador::imprimir_informacoes(); // imprime as informações do treinador n
                                        //  seguinte formato:
{
  std::cout << _nome << "\n";
  for (const auto &pokemon : _pokemons) {
    std::cout << "----------\n" pokemon->imprimir_informacoes();
  }
}

#endif
