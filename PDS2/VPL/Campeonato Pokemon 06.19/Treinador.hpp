#ifndef TREINADOR_HPP
#define TREINADOR_HPP

#include <string>
#include <vector>
#include "Pokemon.hpp"
#include "PokemonEletrico.hpp"
#include "PokemonAquatico.hpp"
#include "PokemonExplosivo.hpp"

class Treinador {
private:
    std::string _nome; // string _nome;
    std::vector<Pokemon*> _pokemons; // vector<Pokemon*> _pokemons;

public:
    Treinador(std::string nome);
    ~Treinador();

    void cadastrar_pokemon_eletrico(std::string nome, std::string tipo_ataque, double forca_ataque, double potencia_raio); // Métodos para cadastro de pokemons específicos
    void cadastrar_pokemon_aquatico(std::string nome, std::string tipo_ataque, double forca_ataque, double litros_jato); // Métodos para cadastro de pokemons específicos
    void cadastrar_pokemon_explosivo(std::string nome, std::string tipo_ataque, double forca_ataque, double temperatura_explosao); // Métodos para cadastro de pokemons específicos

    Pokemon* usar_pokemon(int idpk); // retorna um pokemon específico a partir do índice informado.
    void imprimir_informacoes(); // imprime as informações do treinador no seguinte formato:
};

#endif

