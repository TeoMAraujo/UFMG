#include "tinder.hpp"
#include <iostream>

Tinder::Tinder(Pessoa const &usuario) { 
    this->usuario = usuario; 
}

Tinder::~Tinder() {
  for (int i = 0; i < lp.size(); i++) {
    delete lp[i].caract;
  }
  delete usuario.caract; // so apaga os ponteiros
}


void Tinder::addPessoa(int id, std::string nome, int idade, char sexo, char pele, char tipoFisico) {
  lp.push_back(Pessoa(id, nome, idade, sexo, pele, tipoFisico)); // usa o constructor de pessoa
}

void Tinder::addPreferencias(char sexo, char pele, char tipoFisico) {
  this->parPerfeito = caractFis(sexo, pele, tipoFisico);
}

void Tinder::addPares() {
  for (Pessoa &p : lp) {
    if (parPerfeito->sex == p.caract->sex &&
        parPerfeito->pel == p.caract->pel &&
        parPerfeito->tpf == p.caract->tpf) {
      curtir(p);
    }
  }
}
void Tinder::curtir(Pessoa const &par) {
  if (matches.find(usuario.id) == matches.end()) {
    std::vector<int> id_likes = {}; 
    matches[usuario.id] = id_likes;
    }
    matches[usuario.id].push_back;
  }
}

Pessoa Tinder::*findById(int id) {
  for (Pessoa p : lp) {
    if (p.id == id) {
      return p;
    }
  }
  else {
    return nullptr;
  }
}

void Tinder::listarMatches();{
  std::vector<int> & id.Matches = matches[usuario.id]
        for(int id: id.Matches){
        Pessoa* pessoa = findById();
        pessoa.print();
    }
}
