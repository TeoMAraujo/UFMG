#include "Tinder.hpp"
#include <iostream>

Pessoa::Pessoa(int id, std::string nome, int ida, char sex, char pel, char tpf) {
  this->id = id;
  this->nome = nome;
  this->ida = ida;
  this->caract = new caractFis(sex, pel, tpf);
}

void Pessoa::print() {
    map<char, string> pele, tipoFisico;
    
    pele['M'] = "Morena";
    pele['L'] = "Loira";
    tipoFisico['M'] = "Magro";
    tipoFisico['E'] = "Esbelto"; 
    tipoFisico['O'] = "Obeso";
    
    std::cout << nom << "é uma pessoa" << pele[caract->sex] <<"  de" << ida << "anos" << tipoFisico[caract->tpf] << std::endl;
}
