#ifndef INTERFACE_HPP
#define INTERFACE_HPP

#include <ncurses.h>
#include <vector>
#include <string>
#include "Usuario.hpp"
#include "Produto.hpp"
#include "Pedido.hpp"
#include "Carrinho.hpp"

/**
 * @file Interface.hpp
 * @brief Classe para interface de usuário do marketplace
 * @author Equipe de Desenvolvimento
 * @date 2025
 */

/**
 * @class Interface
 * @brief Classe responsável pela interface de usuário usando ncurses
 * 
 * Esta classe gerencia toda a interação com o usuário através de uma
 * interface de terminal usando a biblioteca ncurses. Inclui menus,
 * formulários, validações e navegação.
 */
class Interface {
private:
    Usuario* usuarioLogado;  ///< Ponteiro para o usuário autenticado
    Carrinho* carrinho;      ///< Ponteiro para o carrinho do usuário
    bool executando;         ///< Flag de controle do loop principal

public:
    /**
     * @brief Construtor da interface
     */
    Interface();
    
    /**
     * @brief Destrutor da interface
     */
    ~Interface();
    
    /**
     * @brief Inicializa a interface ncurses
     * 
     * Configura cores, teclado e outras opções do ncurses
     */
    void inicializar();
    
    /**
     * @brief Loop principal da aplicação
     * 
     * Controla o fluxo entre login e menus principais
     */
    void executar();
    
    /**
     * @brief Finaliza a interface ncurses
     */
    void finalizar();
    
    /**
     * @brief Exibe a tela de login
     * @return true se login bem-sucedido, false para sair
     */
    bool telaLogin();
    
    /**
     * @brief Exibe formulário de cadastro de usuário
     */
    void telaCadastroUsuario();
    
    /**
     * @brief Exibe menu principal para usuários comuns
     */
    void menuPrincipal();
    
    /**
     * @brief Exibe menu principal para administradores
     */
    void menuAdmin();
    
    /**
     * @brief Lista todos os produtos com opção de filtro
     */
    void listarProdutos();
    
    /**
     * @brief Exibe detalhes de um produto específico
     * @param produto Produto a exibir
     */
    void detalheProduto(const Produto& produto);
    
    /**
     * @brief Formulário para adicionar novo produto
     */
    void adicionarProduto();
    
    /**
     * @brief Formulário para editar produto existente
     */
    void editarProduto();
    
    /**
     * @brief Interface para excluir produto
     */
    void excluirProduto();
    
    /**
     * @brief Exibe conteúdo do carrinho
     */
    void visualizarCarrinho();
    
    /**
     * @brief Finaliza compra do carrinho
     */
    void finalizarCompra();
    
    /**
     * @brief Lista pedidos do usuário logado
     */
    void meusPedidos();
    
    /**
     * @brief Interface para cancelar pedido
     */
    void cancelarPedido();
    
    /**
     * @brief Interface de gerenciamento de usuários (admin)
     */
    void gerenciarUsuarios();
    
    /**
     * @brief Interface de gerenciamento de produtos (admin)
     */
    void gerenciarProdutos();
    
    /**
     * @brief Interface de gerenciamento de pedidos (admin)
     */
    void gerenciarPedidos();
    
    /**
     * @brief Exibe estatísticas do sistema (admin)
     */
    void estatisticas();
    
    /**
     * @brief Exibe uma mensagem e aguarda tecla
     * @param mensagem Mensagem a exibir
     */
    void mostrarMensagem(const std::string& mensagem);
    
    /**
     * @brief Solicita confirmação do usuário
     * @param pergunta Pergunta a fazer
     * @return true se confirmado, false caso contrário
     */
    bool confirmarAcao(const std::string& pergunta);
    
    /**
     * @brief Lê uma string do usuário
     * @param prompt Prompt a exibir
     * @param maxLen Tamanho máximo (padrão: 100)
     * @return String digitada pelo usuário
     */
    std::string lerString(const std::string& prompt, int maxLen = 100);
    
    /**
     * @brief Lê um número decimal do usuário
     * @param prompt Prompt a exibir
     * @return Valor decimal digitado
     */
    double lerDouble(const std::string& prompt);
    
    /**
     * @brief Lê um número inteiro do usuário
     * @param prompt Prompt a exibir
     * @return Valor inteiro digitado
     */
    int lerInt(const std::string& prompt);
    
    /**
     * @brief Desenha um título centralizado
     * @param titulo Título a desenhar
     */
    void desenharTitulo(const std::string& titulo);
    
    /**
     * @brief Desenha um menu com opções
     * @param opcoes Lista de opções do menu
     * @param selecionado Índice da opção selecionada
     */
    void desenharMenu(const std::vector<std::string>& opcoes, int selecionado);
    
    /**
     * @brief Permite selecionar uma opção do menu
     * @param opcoes Lista de opções disponíveis
     * @return Índice da opção selecionada
     */
    int selecionarOpcao(const std::vector<std::string>& opcoes);
};

#endif
