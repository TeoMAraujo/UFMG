#ifndef POKEMONEXPLOSIVO_HPP
#define POKEMONEXPLOSIVO_HPP

#include "Pokemon.hpp"

class PokemonExplosivo : public Pokemon {
private:
    double _temperatura_explosao; // double _temperatura_explosao;

public:
    PokemonExplosivo(std::string nome, std::string tipo_ataque, double forca_ataque, double temperatura_explosao); // método construtor para a inicialização dos atributos.
    void falar_tipo_ataque() override; // sobrescrita do método da superclasse. Além de escrever o tipo do ataque também escreve "Boom!" (seguido de quebra de linha).
    double calcular_dano() override; // sobrescrita do método da superclasse.
    double ataque_explosivo(); // calcula e retorna o valor do dano do ataque específico.
};

#endif

