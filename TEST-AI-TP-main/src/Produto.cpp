#include "Produto.hpp"
#include <fstream>
#include <sstream>
#include <algorithm>
#include <stdexcept>

Produto::Produto() : BaseEntity(0), nome(""), descricao(""), preco(0.0), quantidade(0), vendedorId(0), categoria("") {}

Produto::Produto(int id, const std::string& nome, const std::string& descricao, 
                 double preco, int quantidade, int vendedorId, const std::string& categoria)
    : BaseEntity(id), nome(nome), descricao(descricao), preco(preco), quantidade(quantidade), 
      vendedorId(vendedorId), categoria(categoria) {
    validate();
}

void Produto::validate() const {
    if (nome.empty()) {
        throw ValidationException("Nome do produto não pode estar vazio");
    }
    if (preco < 0) {
        throw ValidationException("Preço deve ser positivo");
    }
    if (quantidade < 0) {
        throw ValidationException("Quantidade deve ser positiva");
    }
    if (vendedorId <= 0) {
        throw ValidationException("ID do vendedor deve ser positivo");
    }
}

std::string Produto::toString() const {
    return std::to_string(id) + "|" + nome + "|" + descricao + "|" + 
           std::to_string(preco) + "|" + std::to_string(quantidade) + "|" + 
           std::to_string(vendedorId) + "|" + categoria;
}

std::string Produto::getEntityType() const {
    return "Produto";
}

int Produto::getId() const { return BaseEntity::getId(); }
std::string Produto::getNome() const { return nome; }
std::string Produto::getDescricao() const { return descricao; }
double Produto::getPreco() const { return preco; }
int Produto::getQuantidade() const { return quantidade; }
int Produto::getVendedorId() const { return vendedorId; }
std::string Produto::getCategoria() const { return categoria; }

void Produto::setNome(const std::string& nome) { this->nome = nome; }
void Produto::setDescricao(const std::string& descricao) { this->descricao = descricao; }
void Produto::setPreco(double preco) { this->preco = preco; }
void Produto::setQuantidade(int quantidade) { this->quantidade = quantidade; }
void Produto::setCategoria(const std::string& categoria) { this->categoria = categoria; }

Produto Produto::fromString(const std::string& str) {
    std::istringstream iss(str);
    std::string token;
    std::vector<std::string> tokens;
    
    while (std::getline(iss, token, '|')) {
        tokens.push_back(token);
    }
    
    if (tokens.size() >= 7) {
        return Produto(std::stoi(tokens[0]), tokens[1], tokens[2], 
                      std::stod(tokens[3]), std::stoi(tokens[4]), 
                      std::stoi(tokens[5]), tokens[6]);
    }
    return Produto();
}

std::vector<Produto> Produto::carregarProdutos() {
    std::vector<Produto> produtos;
    std::ifstream file("data/produtos.txt");
    std::string line;
    
    while (std::getline(file, line)) {
        if (!line.empty()) {
            produtos.push_back(Produto::fromString(line));
        }
    }
    
    return produtos;
}

void Produto::salvarProdutos(const std::vector<Produto>& produtos) {
    std::ofstream file("data/produtos.txt");
    for (const auto& produto : produtos) {
        file << produto.toString() << std::endl;
    }
}

std::vector<Produto> Produto::filtrarPorNome(const std::vector<Produto>& produtos, const std::string& nome) {
    std::vector<Produto> resultado;
    std::string nomeLower = nome;
    std::transform(nomeLower.begin(), nomeLower.end(), nomeLower.begin(), ::tolower);
    
    for (const auto& produto : produtos) {
        std::string produtoNome = produto.getNome();
        std::transform(produtoNome.begin(), produtoNome.end(), produtoNome.begin(), ::tolower);
        if (produtoNome.find(nomeLower) != std::string::npos) {
            resultado.push_back(produto);
        }
    }
    return resultado;
}

std::vector<Produto> Produto::filtrarPorCategoria(const std::vector<Produto>& produtos, const std::string& categoria) {
    std::vector<Produto> resultado;
    for (const auto& produto : produtos) {
        if (produto.getCategoria() == categoria) {
            resultado.push_back(produto);
        }
    }
    return resultado;
}

std::vector<Produto> Produto::filtrarPorPreco(const std::vector<Produto>& produtos, double precoMin, double precoMax) {
    std::vector<Produto> resultado;
    for (const auto& produto : produtos) {
        if (produto.getPreco() >= precoMin && produto.getPreco() <= precoMax) {
            resultado.push_back(produto);
        }
    }
    return resultado;
}

int Produto::obterProximoId() {
    std::vector<Produto> produtos = carregarProdutos();
    int maxId = 0;
    for (const auto& produto : produtos) {
        if (produto.getId() > maxId) {
            maxId = produto.getId();
        }
    }
    return maxId + 1;
}
