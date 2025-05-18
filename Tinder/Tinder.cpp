#include "istream"
// meu problema ta mt mais na sintaxe q na logica saiva disso

caractFis::caractFis(char sex, char pel, char tpf) {
  this->sex = sex;
  this->pel = pel;
  this->tpf = tpf;
}

Pessoa::Pessoa(int id, std::string nom, int ida, char sex, char pel, char tpf) {
  this->id = id;
  this->nome = nome;
  this->ida = ida;
  this->caract * = new caractFis(sex, pel, tpf);
}
void Pessoa::print() {}

Tinder::Tinder(Pessoa usuario) { // pqq os argumentos são esses?
  this->usuario = usuario;
}
Tinder::~Tinder() {
  for (caract) // n sei fz destructor nesse caso, mt bo n? de caract fisc teria
               // q da delete no sex pel e tpf, e deletea elas , mas no map e no
               // outro é da um clear?
}

void addPessoa(int id, std::string nome, int idade, char sexo, char pele,
               char tipoFisico) {
  lp.insert(usuario(id, nome, idade, sexo, pele, tipoFisico));
  std::map // ta dando pau pq eu n entendo intrissicamente o funcionamente do
           // programa, tomo pau pra stl
}

void addPreferencias(char sexo, char pele, char tipoFisico) {}

void addPares() {}
void curtir(Pessoa const &par) {}
Pessoa *findById(int id) {
  // ele vai procurar no map as caractericas postas
}
void listarMatches();
{

};
