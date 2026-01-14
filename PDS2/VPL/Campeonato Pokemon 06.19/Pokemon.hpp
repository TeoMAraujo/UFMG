#ifndef POKEMON_HPP
#define POKEMON_HPP

#include <iostream>
#include <string>

class pokemon {
private:
  std::string _nome;        // string _nome;
  std::string _tipo_ataque; // string _tipo_ataque;
  double _forca_ataque;     // double _forca_ataque;
  double _energia = 100;    // double _energia = 100;

public:
  pokemon(string nome, string tipo_ataque, double forca_ataque);
  virtual ~Pokemon();

  void falar_nome(); // imprime o nome do pokemon no formato: "Nome!" (seguido
                     // de quebra de linha).
  virtual void falar_tipo_ataque(); // imprime o tipo do ataque no formato:
                                    // "Tipo!" (seguido de quebra de linha).
  void imprimir_status();      // imprime o estado atual do pokemon no formato:
  void imprimir_informacoes(); // imprime as informações do pokemon no formato:
  virtual double
  calcular_dano() = 0; // método virtual puro que calcula o dano de um ataque de 
                       // cordo com o tipo e dados específicos de cada pokemon.
  void atacar(Pokemon *outro_pokemon); // método que executa o ataque sobre 
                                       // utro pokemon
  void receber_dano(
      double valor_dano); // cálculo que aplica o dano recebido por um ataque
};

#endif
