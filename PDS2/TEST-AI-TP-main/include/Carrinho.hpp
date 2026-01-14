#ifndef CARRINHO_HPP
#define CARRINHO_HPP

#include <vector>
#include "Pedido.hpp"
#include "BaseEntity.hpp"

/**
 * @file Carrinho.hpp
 * @brief Classe para gerenciamento do carrinho de compras
 * @author Equipe de Desenvolvimento
 * @date 2025
 */

/**
 * @class Carrinho
 * @brief Classe responsável por gerenciar o carrinho de compras
 * 
 * Esta classe permite ao usuário adicionar e remover produtos antes
 * de finalizar a compra, calculando automaticamente o total e
 * gerenciando os itens temporariamente.
 * Herda de BaseEntity para implementar padrões OOP.
 */
class Carrinho : public BaseEntity {
private:
    std::vector<ItemPedido> itens;  ///< Lista de itens no carrinho
    int usuarioId;                  ///< ID do usuário dono do carrinho

public:
    /**
     * @brief Construtor do carrinho
     * @param usuarioId ID do usuário dono do carrinho
     */
    Carrinho(int usuarioId);
    
    /**
     * @brief Adiciona um item ao carrinho
     * 
     * Se o produto já existe no carrinho, incrementa a quantidade.
     * Caso contrário, adiciona um novo item.
     * 
     * @param produtoId ID do produto
     * @param quantidade Quantidade a adicionar
     * @param precoUnitario Preço unitário do produto
     */
    void adicionarItem(int produtoId, int quantidade, double precoUnitario);
    
    /**
     * @brief Remove um item do carrinho
     * @param produtoId ID do produto a remover
     */
    void removerItem(int produtoId);
    
    /**
     * @brief Limpa todos os itens do carrinho
     */
    void limpar();
    
    /**
     * @brief Obtém a lista de itens do carrinho
     * @return Vetor com os itens do carrinho
     */
    std::vector<ItemPedido> getItens() const;
    
    /**
     * @brief Calcula o valor total do carrinho
     * @return Valor total de todos os itens
     */
    double calcularTotal() const;
    
    /**
     * @brief Verifica se o carrinho está vazio
     * @return true se vazio, false caso contrário
     */
    bool vazio() const;
    
    /**
     * @brief Finaliza a compra criando um pedido
     * 
     * Cria um novo pedido com os itens do carrinho e
     * limpa o carrinho automaticamente.
     * 
     * @return Pedido criado com os itens do carrinho
     */
    Pedido finalizarCompra();

    // Implementação dos métodos virtuais de BaseEntity
    
    /**
     * @brief Valida os dados do carrinho
     * @throws ValidationException Se os dados forem inválidos
     */
    void validate() const override;
    
    /**
     * @brief Converte o carrinho para string (serialização)
     * @return String representando o carrinho
     */
    std::string toString() const override;
    
    /**
     * @brief Obtém o tipo da entidade
     * @return "Carrinho"
     */
    std::string getEntityType() const override;
    
    /**
     * @brief Obtém o ID da entidade (ID do usuário)
     * @return ID do usuário dono do carrinho
     */
    int getId() const override;
};

#endif
