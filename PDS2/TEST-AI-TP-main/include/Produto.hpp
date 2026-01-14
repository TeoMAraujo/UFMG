#ifndef PRODUTO_HPP
#define PRODUTO_HPP

#include <string>
#include <vector>
#include "BaseEntity.hpp"

/**
 * @file Produto.hpp
 * @brief Classe para gerenciamento de produtos do marketplace
 * @author Equipe de Desenvolvimento
 * @date 2025
 */

/**
 * @class Produto
 * @brief Classe responsável por gerenciar informações dos produtos
 * 
 * Esta classe herda de BaseEntity e gerencia o catálogo de produtos do marketplace, 
 * incluindo informações como nome, descrição, preço, quantidade em estoque e categoria.
 * Também oferece funcionalidades de filtro e persistência de dados.
 */
class Produto : public BaseEntity {
private:
    std::string nome;           ///< Nome do produto
    std::string descricao;      ///< Descrição detalhada do produto
    double preco;              ///< Preço unitário do produto
    int quantidade;            ///< Quantidade em estoque
    int vendedorId;            ///< ID do usuário vendedor
    std::string categoria;     ///< Categoria do produto

public:
    /**
     * @brief Construtor padrão
     * 
     * Cria um produto com valores padrão
     */
    Produto();
    
    /**
     * @brief Construtor parametrizado
     * 
     * @param id Identificador único do produto
     * @param nome Nome do produto
     * @param descricao Descrição do produto
     * @param preco Preço unitário
     * @param quantidade Quantidade em estoque
     * @param vendedorId ID do vendedor
     * @param categoria Categoria do produto (opcional)
     * @throws ValidationException se dados inválidos
     */
    Produto(int id, const std::string& nome, const std::string& descricao, 
            double preco, int quantidade, int vendedorId, const std::string& categoria = "");
    
    /**
     * @brief Implementação da validação da entidade
     * @throws ValidationException se produto inválido
     */
    void validate() const override;
    
    /**
     * @brief Implementação da serialização
     * @return String representando o produto
     */
    std::string toString() const override;
    
    /**
     * @brief Obtém o tipo da entidade
     * @return Tipo da entidade
     */
    std::string getEntityType() const override;
    
    /**
     * @brief Obtém o ID do produto
     * @return ID do produto
     */
    int getId() const override;
    
    /**
     * @brief Obtém o nome do produto
     * @return Nome do produto
     */
    std::string getNome() const;
    
    /**
     * @brief Obtém a descrição do produto
     * @return Descrição do produto
     */
    std::string getDescricao() const;
    
    /**
     * @brief Obtém o preço do produto
     * @return Preço do produto
     */
    double getPreco() const;
    
    /**
     * @brief Obtém a quantidade em estoque
     * @return Quantidade disponível
     */
    int getQuantidade() const;
    
    /**
     * @brief Obtém o ID do vendedor
     * @return ID do vendedor
     */
    int getVendedorId() const;
    
    /**
     * @brief Obtém a categoria do produto
     * @return Categoria do produto
     */
    std::string getCategoria() const;
    
    /**
     * @brief Define o nome do produto
     * @param nome Novo nome do produto
     */
    void setNome(const std::string& nome);
    
    /**
     * @brief Define a descrição do produto
     * @param descricao Nova descrição
     */
    void setDescricao(const std::string& descricao);
    
    /**
     * @brief Define o preço do produto
     * @param preco Novo preço
     */
    void setPreco(double preco);
    
    /**
     * @brief Define a quantidade em estoque
     * @param quantidade Nova quantidade
     */
    void setQuantidade(int quantidade);
    
    /**
     * @brief Define a categoria do produto
     * @param categoria Nova categoria
     */
    void setCategoria(const std::string& categoria);
    
    /**
     * @brief Converte o produto para string (serialização)
     * @return String representando o produto
     * @note Implementação da interface BaseEntity
     */
    
    /**
     * @brief Cria um produto a partir de uma string (deserialização)
     * @param str String com dados do produto
     * @return Objeto Produto criado
     */
    static Produto fromString(const std::string& str);
    
    /**
     * @brief Carrega todos os produtos do arquivo
     * @return Vetor com todos os produtos
     */
    static std::vector<Produto> carregarProdutos();
    
    /**
     * @brief Salva todos os produtos no arquivo
     * @param produtos Vetor de produtos a salvar
     */
    static void salvarProdutos(const std::vector<Produto>& produtos);
    
    /**
     * @brief Filtra produtos por nome
     * @param produtos Lista de produtos
     * @param nome Nome a buscar (busca parcial)
     * @return Produtos que correspondem ao filtro
     */
    static std::vector<Produto> filtrarPorNome(const std::vector<Produto>& produtos, const std::string& nome);
    
    /**
     * @brief Filtra produtos por categoria
     * @param produtos Lista de produtos
     * @param categoria Categoria exata a buscar
     * @return Produtos da categoria especificada
     */
    static std::vector<Produto> filtrarPorCategoria(const std::vector<Produto>& produtos, const std::string& categoria);
    
    /**
     * @brief Filtra produtos por faixa de preço
     * @param produtos Lista de produtos
     * @param precoMin Preço mínimo
     * @param precoMax Preço máximo
     * @return Produtos na faixa de preço
     */
    static std::vector<Produto> filtrarPorPreco(const std::vector<Produto>& produtos, double precoMin, double precoMax);
    
    /**
     * @brief Obtém o próximo ID disponível
     * @return Próximo ID a ser usado
     */
    static int obterProximoId();
};

#endif
