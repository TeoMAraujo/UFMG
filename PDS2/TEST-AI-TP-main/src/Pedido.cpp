#include "Pedido.hpp"
#include <fstream>
#include <sstream>

Pedido::Pedido() : id(0), usuarioId(0), status(PENDENTE), total(0.0) {
    dataCompra = std::time(nullptr);
}

Pedido::Pedido(int id, int usuarioId, const std::vector<ItemPedido>& itens, StatusPedido status)
    : id(id), usuarioId(usuarioId), itens(itens), status(status) {
    dataCompra = std::time(nullptr);
    calcularTotal();
    validate(); // Validar após inicialização
}

int Pedido::getId() const { return id; }
int Pedido::getUsuarioId() const { return usuarioId; }
std::vector<ItemPedido> Pedido::getItens() const { return itens; }
StatusPedido Pedido::getStatus() const { return status; }
double Pedido::getTotal() const { return total; }
std::time_t Pedido::getDataCompra() const { return dataCompra; }

void Pedido::setStatus(StatusPedido status) { this->status = status; }

void Pedido::adicionarItem(const ItemPedido& item) {
    itens.push_back(item);
    calcularTotal();
}

void Pedido::removerItem(int produtoId) {
    for (auto it = itens.begin(); it != itens.end(); ++it) {
        if (it->produtoId == produtoId) {
            itens.erase(it);
            break;
        }
    }
    calcularTotal();
}

void Pedido::calcularTotal() {
    total = 0.0;
    for (const auto& item : itens) {
        total += item.quantidade * item.precoUnitario;
    }
}

// Implementação dos métodos virtuais de BaseEntity
void Pedido::validate() const {
    if (id <= 0) {
        throw ValidationException("ID do pedido deve ser positivo");
    }
    if (usuarioId <= 0) {
        throw ValidationException("ID do usuário deve ser positivo");
    }
    if (itens.empty()) {
        throw ValidationException("Pedido deve conter pelo menos um item");
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

std::string Pedido::getEntityType() const {
    return "Pedido";
}

std::string Pedido::toString() const {
    std::ostringstream oss;
    oss << id << "|" << usuarioId << "|" << statusToString(status) << "|" << total << "|" << dataCompra << "|";
    
    for (size_t i = 0; i < itens.size(); ++i) {
        oss << itens[i].produtoId << ":" << itens[i].quantidade << ":" << itens[i].precoUnitario;
        if (i < itens.size() - 1) oss << ";";
    }
    
    return oss.str();
}

Pedido Pedido::fromString(const std::string& str) {
    std::istringstream iss(str);
    std::string token;
    std::vector<std::string> tokens;
    
    while (std::getline(iss, token, '|')) {
        tokens.push_back(token);
    }
    
    if (tokens.size() >= 6) {
        Pedido pedido;
        pedido.id = std::stoi(tokens[0]);
        pedido.usuarioId = std::stoi(tokens[1]);
        pedido.status = stringToStatus(tokens[2]);
        pedido.total = std::stod(tokens[3]);
        pedido.dataCompra = std::stoll(tokens[4]);
        
        if (!tokens[5].empty()) {
            std::istringstream itemsStream(tokens[5]);
            std::string itemStr;
            while (std::getline(itemsStream, itemStr, ';')) {
                std::istringstream itemDataStream(itemStr);
                std::string itemData;
                std::vector<std::string> itemTokens;
                while (std::getline(itemDataStream, itemData, ':')) {
                    itemTokens.push_back(itemData);
                }
                if (itemTokens.size() >= 3) {
                    ItemPedido item(std::stoi(itemTokens[0]), std::stoi(itemTokens[1]), std::stod(itemTokens[2]));
                    pedido.itens.push_back(item);
                }
            }
        }
        
        return pedido;
    }
    return Pedido();
}

std::string Pedido::statusToString(StatusPedido status) {
    switch (status) {
        case PENDENTE: return "PENDENTE";
        case PROCESSANDO: return "PROCESSANDO";
        case ENVIADO: return "ENVIADO";
        case ENTREGUE: return "ENTREGUE";
        case CANCELADO: return "CANCELADO";
        default: return "PENDENTE";
    }
}

StatusPedido Pedido::stringToStatus(const std::string& str) {
    if (str == "PENDENTE") return PENDENTE;
    if (str == "PROCESSANDO") return PROCESSANDO;
    if (str == "ENVIADO") return ENVIADO;
    if (str == "ENTREGUE") return ENTREGUE;
    if (str == "CANCELADO") return CANCELADO;
    return PENDENTE;
}

std::vector<Pedido> Pedido::carregarPedidos() {
    std::vector<Pedido> pedidos;
    try {
        std::ifstream file("data/pedidos.txt");
        if (!file.is_open()) {
            throw FileException("Não foi possível abrir o arquivo de pedidos");
        }
        
        std::string line;
        int lineNumber = 1;
        
        while (std::getline(file, line)) {
            if (!line.empty()) {
                try {
                    pedidos.push_back(Pedido::fromString(line));
                } catch (const std::exception& e) {
                    throw FileException("Erro na linha " + std::to_string(lineNumber) + 
                                      " do arquivo de pedidos: " + e.what());
                }
            }
            lineNumber++;
        }
        file.close();
    } catch (const FileException&) {
        throw; // Re-throw file exceptions
    } catch (const std::exception& e) {
        throw FileException("Erro inesperado ao carregar pedidos: " + std::string(e.what()));
    }
    
    return pedidos;
}

void Pedido::salvarPedidos(const std::vector<Pedido>& pedidos) {
    try {
        std::ofstream file("data/pedidos.txt");
        if (!file.is_open()) {
            throw FileException("Não foi possível criar/abrir o arquivo de pedidos para escrita");
        }
        
        for (const auto& pedido : pedidos) {
            file << pedido.toString() << std::endl;
            if (file.fail()) {
                throw FileException("Erro ao escrever pedido no arquivo");
            }
        }
        file.close();
    } catch (const FileException&) {
        throw; // Re-throw file exceptions
    } catch (const std::exception& e) {
        throw FileException("Erro inesperado ao salvar pedidos: " + std::string(e.what()));
    }
}

std::vector<Pedido> Pedido::obterPedidosUsuario(int usuarioId) {
    std::vector<Pedido> todosPedidos = carregarPedidos();
    std::vector<Pedido> pedidosUsuario;
    
    for (const auto& pedido : todosPedidos) {
        if (pedido.getUsuarioId() == usuarioId) {
            pedidosUsuario.push_back(pedido);
        }
    }
    
    return pedidosUsuario;
}

int Pedido::obterProximoId() {
    std::vector<Pedido> pedidos = carregarPedidos();
    int maxId = 0;
    for (const auto& pedido : pedidos) {
        if (pedido.getId() > maxId) {
            maxId = pedido.getId();
        }
    }
    return maxId + 1;
}
