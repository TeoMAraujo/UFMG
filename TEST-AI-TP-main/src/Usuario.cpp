#include "Usuario.hpp"
#include <fstream>
#include <sstream>
#include <algorithm>
#include <stdexcept>

Usuario::Usuario() : BaseEntity(0), nome(""), email(""), senha(""), isAdmin(false) {}

Usuario::Usuario(int id, const std::string& nome, const std::string& email, 
                 const std::string& senha, bool isAdmin) 
    : BaseEntity(id), nome(nome), email(email), senha(senha), isAdmin(isAdmin) {
    validate();
}

void Usuario::validate() const {
    if (nome.empty()) {
        throw ValidationException("Nome não pode estar vazio");
    }
    if (email.empty()) {
        throw ValidationException("Email não pode estar vazio");
    }
    if (email.find('@') == std::string::npos) {
        throw ValidationException("Email deve conter @");
    }
    if (senha.length() < 3) {
        throw ValidationException("Senha deve ter pelo menos 3 caracteres");
    }
}

int Usuario::getId() const {
    return BaseEntity::getId();
}

std::string Usuario::getNome() const { return nome; }
std::string Usuario::getEmail() const { return email; }
std::string Usuario::getSenha() const { return senha; }
bool Usuario::getIsAdmin() const { return isAdmin; }

void Usuario::setNome(const std::string& nome) { this->nome = nome; }
void Usuario::setEmail(const std::string& email) { this->email = email; }
void Usuario::setSenha(const std::string& senha) { this->senha = senha; }
void Usuario::setIsAdmin(bool isAdmin) { this->isAdmin = isAdmin; }

std::string Usuario::toString() const {
    return std::to_string(id) + "|" + nome + "|" + email + "|" + senha + "|" + (isAdmin ? "1" : "0");
}

std::string Usuario::getEntityType() const {
    return "Usuario";
}

Usuario Usuario::fromString(const std::string& str) {
    std::istringstream iss(str);
    std::string token;
    std::vector<std::string> tokens;
    
    while (std::getline(iss, token, '|')) {
        tokens.push_back(token);
    }
    
    if (tokens.size() < 5) {
        throw ValidationException("Formato inválido para usuário: necessário 5 campos separados por |");
    }
    
    try {
        return Usuario(std::stoi(tokens[0]), tokens[1], tokens[2], tokens[3], tokens[4] == "1");
    } catch (const std::invalid_argument& e) {
        throw ValidationException("Formato inválido de dados numéricos no usuário");
    } catch (const std::out_of_range& e) {
        throw ValidationException("Valor numérico fora do range no usuário");
    }
}

std::vector<Usuario> Usuario::carregarUsuarios() {
    std::vector<Usuario> usuarios;
    std::ifstream file("data/usuarios.txt");
    
    if (!file.is_open()) {
        throw FileException("Não foi possível abrir o arquivo data/usuarios.txt");
    }
    
    std::string line;
    int lineNumber = 1;
    
    try {
        while (std::getline(file, line)) {
            if (!line.empty()) {
                try {
                    usuarios.push_back(Usuario::fromString(line));
                } catch (const ValidationException& e) {
                    // Log error but continue reading other lines
                    // In a real system, you might want to log this error
                    continue;
                }
            }
            lineNumber++;
        }
    } catch (const std::ios_base::failure& e) {
        throw FileException("Erro ao ler arquivo usuarios.txt");
    }
    
    if (usuarios.empty()) {
        usuarios.push_back(Usuario(1, "Admin", "admin@admin.com", "admin", true));
    }
    
    return usuarios;
}

void Usuario::salvarUsuarios(const std::vector<Usuario>& usuarios) {
    std::ofstream file("data/usuarios.txt");
    
    if (!file.is_open()) {
        throw FileException("Não foi possível abrir o arquivo data/usuarios.txt para escrita");
    }
    
    try {
        for (const auto& usuario : usuarios) {
            file << usuario.toString() << std::endl;
        }
    } catch (const std::ios_base::failure& e) {
        throw FileException("Erro ao escrever no arquivo usuarios.txt");
    }
}

Usuario* Usuario::autenticar(const std::string& email, const std::string& senha) {
    static std::vector<Usuario> usuarios = carregarUsuarios();
    usuarios = carregarUsuarios();
    
    for (auto& usuario : usuarios) {
        if (usuario.getEmail() == email && usuario.getSenha() == senha) {
            static Usuario usuarioLogado = usuario;
            usuarioLogado = usuario;
            return &usuarioLogado;
        }
    }
    return nullptr;
}

int Usuario::obterProximoId() {
    std::vector<Usuario> usuarios = carregarUsuarios();
    int maxId = 0;
    for (const auto& usuario : usuarios) {
        if (usuario.getId() > maxId) {
            maxId = usuario.getId();
        }
    }
    return maxId + 1;
}
