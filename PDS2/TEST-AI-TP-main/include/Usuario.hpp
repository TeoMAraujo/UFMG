#ifndef USUARIO_HPP
#define USUARIO_HPP

#include <string>
#include <vector>
#include "BaseEntity.hpp"

/**
 * @file Usuario.hpp
 * @brief Classe para gerenciamento de usuários do marketplace
 * @author Equipe de Desenvolvimento
 * @date 2025
 */

/**
 * @class Usuario
 * @brief Classe responsável por gerenciar informações dos usuários
 * 
 * Esta classe herda de BaseEntity e encapsula todas as informações e operações 
 * relacionadas aos usuários do sistema de marketplace, incluindo autenticação, 
 * persistência de dados e controle de privilégios administrativos.
 */
class Usuario : public BaseEntity {
private:
    std::string nome;        ///< Nome completo do usuário
    std::string email;       ///< Email do usuário (usado para login)
    std::string senha;       ///< Senha do usuário
    bool isAdmin;           ///< Flag indicando se o usuário é administrador

public:
    /**
     * @brief Construtor padrão
     * 
     * Cria um usuário com valores padrão (ID=0, campos vazios, não admin)
     */
    Usuario();
    
    /**
     * @brief Constructor parametrizado
     * 
     * @param id Identificador único do usuário
     * @param nome Nome completo do usuário
     * @param email Email do usuário
     * @param senha Senha do usuário
     * @param isAdmin Se o usuário é administrador (padrão: false)
     * @throws ValidationException se dados inválidos
     */
    Usuario(int id, const std::string& nome, const std::string& email, const std::string& senha, bool isAdmin = false);
    
    /**
     * @brief Implementação da validação da entidade
     * @throws ValidationException se usuário inválido
     */
    void validate() const override;
    
    /**
     * @brief Implementação da serialização
     * @return String representando o usuário
     */
    std::string toString() const override;
    
    /**
     * @brief Obtém o tipo da entidade
     * @return Tipo da entidade
     */
    std::string getEntityType() const override;
    
    /**
     * @brief Obtém o ID do usuário
     * @return ID do usuário
     */
    int getId() const override;
    
    /**
     * @brief Obtém o nome do usuário
     * @return Nome do usuário
     */
    std::string getNome() const;
    
    /**
     * @brief Obtém o email do usuário
     * @return Email do usuário
     */
    std::string getEmail() const;
    
    /**
     * @brief Obtém a senha do usuário
     * @return Senha do usuário
     */
    std::string getSenha() const;
    
    /**
     * @brief Verifica se o usuário é administrador
     * @return true se for administrador, false caso contrário
     */
    bool getIsAdmin() const;
    
    /**
     * @brief Define o nome do usuário
     * @param nome Novo nome do usuário
     */
    void setNome(const std::string& nome);
    
    /**
     * @brief Define o email do usuário
     * @param email Novo email do usuário
     */
    void setEmail(const std::string& email);
    
    /**
     * @brief Define a senha do usuário
     * @param senha Nova senha do usuário
     */
    void setSenha(const std::string& senha);
    
    /**
     * @brief Define se o usuário é administrador
     * @param isAdmin true para administrador, false para usuário comum
     */
    void setIsAdmin(bool isAdmin);
    
    /**
     * @brief Cria um usuário a partir de uma string (deserialização)
     * @param str String no formato: id|nome|email|senha|isAdmin
     * @return Objeto Usuario criado a partir da string
     * @throws ValidationException se formato inválido
     */
    static Usuario fromString(const std::string& str);
    
    /**
     * @brief Carrega todos os usuários do arquivo
     * @return Vetor com todos os usuários cadastrados
     */
    static std::vector<Usuario> carregarUsuarios();
    
    /**
     * @brief Salva todos os usuários no arquivo
     * @param usuarios Vetor com os usuários a serem salvos
     */
    static void salvarUsuarios(const std::vector<Usuario>& usuarios);
    
    /**
     * @brief Autentica um usuário com email e senha
     * @param email Email do usuário
     * @param senha Senha do usuário
     * @return Ponteiro para o usuário autenticado ou nullptr se inválido
     */
    static Usuario* autenticar(const std::string& email, const std::string& senha);
    
    /**
     * @brief Obtém o próximo ID disponível para novo usuário
     * @return Próximo ID a ser usado
     */
    static int obterProximoId();
};

#endif
