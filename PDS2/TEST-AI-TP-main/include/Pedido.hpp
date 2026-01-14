#ifndef PEDIDO_HPP
#define PEDIDO_HPP

#include <string>
#include <vector>
#include <ctime>
#include "BaseEntity.hpp"

/**
 * @file Pedido.hpp
 * @brief Classes para gerenciamento de pedidos do marketplace
 * @author Equipe de Desenvolvimento
 * @date 2025
 */

/**
 * @enum StatusPedido
 * @brief Enumeration dos possíveis status de um pedido
 */
enum StatusPedido {
    PENDENTE,     ///< Pedido criado, aguardando processamento
    PROCESSANDO,  ///< Pedido sendo preparado
    ENVIADO,      ///< Pedido enviado para entrega
    ENTREGUE,     ///< Pedido entregue ao cliente
    CANCELADO     ///< Pedido cancelado
};

/**
 * @struct ItemPedido
 * @brief Estrutura representando um item dentro de um pedido
 * 
 * Cada item contém informações sobre o produto, quantidade comprada
 * e preço unitário no momento da compra.
 */
struct ItemPedido {
    int produtoId;          ///< ID do produto
    int quantidade;         ///< Quantidade comprada
    double precoUnitario;   ///< Preço unitário no momento da compra
    
    /**
     * @brief Construtor padrão
     */
    ItemPedido() : produtoId(0), quantidade(0), precoUnitario(0.0) {}
    
    /**
     * @brief Construtor parametrizado
     * @param pid ID do produto
     * @param qtd Quantidade
     * @param preco Preço unitário
     */
    ItemPedido(int pid, int qtd, double preco) : produtoId(pid), quantidade(qtd), precoUnitario(preco) {}
};

/**
 * @class Pedido
 * @brief Classe responsável por gerenciar pedidos de compra
 * 
 * Esta classe gerencia todo o ciclo de vida de um pedido, desde sua criação
 * até a entrega, incluindo controle de status e cálculo de totais.
 * Herda de BaseEntity para implementar padrões OOP.
 */
class Pedido : public BaseEntity {
private:
    int id;                             ///< Identificador único do pedido
    int usuarioId;                      ///< ID do usuário que fez o pedido
    std::vector<ItemPedido> itens;      ///< Lista de itens do pedido
    StatusPedido status;                ///< Status atual do pedido
    double total;                       ///< Valor total do pedido
    std::time_t dataCompra;            ///< Data/hora da compra

public:
    /**
     * @brief Construtor padrão
     * 
     * Cria um pedido vazio com status PENDENTE
     */
    Pedido();
    
    /**
     * @brief Construtor parametrizado
     * 
     * @param id Identificador do pedido
     * @param usuarioId ID do usuário
     * @param itens Lista de itens do pedido
     * @param status Status inicial (padrão: PENDENTE)
     */
    Pedido(int id, int usuarioId, const std::vector<ItemPedido>& itens, StatusPedido status = PENDENTE);
    
    /**
     * @brief Obtém o ID do pedido
     * @return ID do pedido
     */
    int getId() const override;
    
    /**
     * @brief Obtém o ID do usuário
     * @return ID do usuário que fez o pedido
     */
    int getUsuarioId() const;
    
    /**
     * @brief Obtém a lista de itens
     * @return Vetor com os itens do pedido
     */
    std::vector<ItemPedido> getItens() const;
    
    /**
     * @brief Obtém o status do pedido
     * @return Status atual do pedido
     */
    StatusPedido getStatus() const;
    
    /**
     * @brief Obtém o valor total do pedido
     * @return Valor total calculado
     */
    double getTotal() const;
    
    /**
     * @brief Obtém a data da compra
     * @return Timestamp da compra
     */
    std::time_t getDataCompra() const;
    
    /**
     * @brief Define o status do pedido
     * @param status Novo status
     */
    void setStatus(StatusPedido status);
    
    /**
     * @brief Adiciona um item ao pedido
     * @param item Item a ser adicionado
     */
    void adicionarItem(const ItemPedido& item);
    
    /**
     * @brief Remove um item do pedido
     * @param produtoId ID do produto a remover
     */
    void removerItem(int produtoId);
    
    /**
     * @brief Recalcula o valor total do pedido
     * 
     * Soma todos os itens (quantidade × preço unitário)
     */
    void calcularTotal();
    
    /**
     * @brief Cria um pedido a partir de uma string (deserialização)
     * @param str String com dados do pedido
     * @return Objeto Pedido criado
     */
    static Pedido fromString(const std::string& str);
    
    /**
     * @brief Converte status para string
     * @param status Status a converter
     * @return String representando o status
     */
    static std::string statusToString(StatusPedido status);
    
    /**
     * @brief Converte string para status
     * @param str String representando o status
     * @return Status correspondente
     */
    static StatusPedido stringToStatus(const std::string& str);

    // Implementação dos métodos virtuais de BaseEntity
    
    /**
     * @brief Valida os dados do pedido
     * @throws ValidationException Se os dados forem inválidos
     */
    void validate() const override;
    
    /**
     * @brief Converte o pedido para string (serialização)
     * @return String representando o pedido
     */
    std::string toString() const override;
    
    /**
     * @brief Obtém o tipo da entidade
     * @return "Pedido"
     */
    std::string getEntityType() const override;

    /**
     * @brief Carrega todos os pedidos do arquivo
     * @return Vetor com todos os pedidos
     */
    static std::vector<Pedido> carregarPedidos();
    
    /**
     * @brief Salva todos os pedidos no arquivo
     * @param pedidos Vetor de pedidos a salvar
     */
    static void salvarPedidos(const std::vector<Pedido>& pedidos);
    
    /**
     * @brief Obtém pedidos de um usuário específico
     * @param usuarioId ID do usuário
     * @return Pedidos do usuário
     */
    static std::vector<Pedido> obterPedidosUsuario(int usuarioId);
    
    /**
     * @brief Obtém o próximo ID disponível
     * @return Próximo ID a ser usado
     */
    static int obterProximoId();
};

#endif
