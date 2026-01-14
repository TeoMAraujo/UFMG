#include "Carrinho.hpp"
#include <sstream>

Carrinho::Carrinho(int usuarioId) : usuarioId(usuarioId) {
    validate(); // Validar após inicialização
}

void Carrinho::adicionarItem(int produtoId, int quantidade, double precoUnitario) {
    for (auto& item : itens) {
        if (item.produtoId == produtoId) {
            item.quantidade += quantidade;
            return;
        }
    }
    itens.push_back(ItemPedido(produtoId, quantidade, precoUnitario));
}

void Carrinho::removerItem(int produtoId) {
    for (auto it = itens.begin(); it != itens.end(); ++it) {
        if (it->produtoId == produtoId) {
            itens.erase(it);
            break;
        }
    }
}

void Carrinho::limpar() {
    itens.clear();
}

std::vector<ItemPedido> Carrinho::getItens() const {
    return itens;
}

double Carrinho::calcularTotal() const {
    double total = 0.0;
    for (const auto& item : itens) {
        total += item.quantidade * item.precoUnitario;
    }
    return total;
}

bool Carrinho::vazio() const {
    return itens.empty();
}

Pedido Carrinho::finalizarCompra() {
    Pedido pedido(Pedido::obterProximoId(), usuarioId, itens);
    limpar();
    return pedido;
}

// Implementação dos métodos virtuais de BaseEntity
void Carrinho::validate() const {
    if (usuarioId <= 0) {
        throw ValidationException("ID do usuário deve ser positivo");
    }
    for (const auto& item : itens) {
        if (item.produtoId <= 0) {
            throw ValidationException("ID do produto deve ser positivo");
        }
        if (item.quantidade <= 0) {
            throw ValidationException("Quantidade do item deve ser positiva");
        }
        if (item.precoUnitario < 0) {
            throw ValidationException("Preço unitário não pode ser negativo");
        }
    }
}

std::string Carrinho::toString() const {
    std::ostringstream oss;
    oss << "Carrinho[usuarioId=" << usuarioId << ",itens=" << itens.size() 
        << ",total=" << calcularTotal() << "]";
    return oss.str();
}

std::string Carrinho::getEntityType() const {
    return "Carrinho";
}

int Carrinho::getId() const {
    return usuarioId; // Usar ID do usuário como identificador único do carrinho
}
