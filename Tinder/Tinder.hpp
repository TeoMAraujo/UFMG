#include <string>
#include <map>
#include <vector>

struct caractFis {
    // Valores válidos:
    // sexo: M: Masculino , F: Feminino
    // pele: M: Morena , L: Loira
    // tipoFisico: M: Magro , E: Esbelto , O: Obeso
    char sexo, pele, tipoFisico;
    caractFis(char sex, char pel, char tpf);
    caractFis() = default;
};

struct Pessoa {
    std::string nome;
    int id, idade;
    caractFis* caract;
    Pessoa(int id, std::string nom, int ida, char sex, char pel, char tpf);
    Pessoa() = default;
    void print();
};

struct Tinder {
    Pessoa usuario;
    std::vector<Pessoa> lp;
    std::map<int, std::vector<int>> matches;
    caractFis parPerfeito;

    Tinder(Pessoa const& usuario);
    ~Tinder();
    void addPessoa(int id, std::string nome, int idade, char sexo, char pele, char tipoFisico);
    void addPreferencias(char sexo, char pele, char tipoFisico);
    void addPares();
    void curtir(Pessoa const& par);
    Pessoa* findById(int id);
    void listarMatches();
};

