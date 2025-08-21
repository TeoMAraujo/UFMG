#include "Interface.hpp"
#include <iostream>
#include <sstream>
#include <iomanip>
#include <stdexcept>

Interface::Interface() : usuarioLogado(nullptr), carrinho(nullptr), executando(true) {}

Interface::~Interface() {
    if (carrinho) delete carrinho;
}

void Interface::inicializar() {
    initscr();
    noecho();
    cbreak();
    keypad(stdscr, TRUE);
    start_color();
    init_pair(1, COLOR_WHITE, COLOR_BLUE);
    init_pair(2, COLOR_BLACK, COLOR_WHITE);
    init_pair(3, COLOR_RED, COLOR_BLACK);
    
    if (has_colors()) {
        bkgd(COLOR_PAIR(1));
    }
}

void Interface::executar() {
    while (executando) {
        clear();
        if (!usuarioLogado) {
            if (!telaLogin()) {
                executando = false;
                break;
            }
        }
        
        if (usuarioLogado) {
            if (!carrinho) {
                carrinho = new Carrinho(usuarioLogado->getId());
            }
            
            if (usuarioLogado->getIsAdmin()) {
                menuAdmin();
            } else {
                menuPrincipal();
            }
        }
    }
}

void Interface::finalizar() {
    endwin();
}

bool Interface::telaLogin() {
    clear();
    desenharTitulo("MARKETPLACE - LOGIN");
    
    std::vector<std::string> opcoes = {
        "1. Fazer Login",
        "2. Cadastrar Usuario",
        "3. Sair"
    };
    
    int escolha = selecionarOpcao(opcoes);
    
    switch (escolha) {
        case 0: {
            std::string email = lerString("Email: ");
            std::string senha = lerString("Senha: ");
            
            usuarioLogado = Usuario::autenticar(email, senha);
            if (!usuarioLogado) {
                mostrarMensagem("Login invalido! Pressione uma tecla para continuar.");
                return true;
            }
            mostrarMensagem("Login realizado com sucesso!");
            return true;
        }
        case 1:
            telaCadastroUsuario();
            return true;
        case 2:
            return false;
        default:
            return true;
    }
}

void Interface::telaCadastroUsuario() {
    clear();
    desenharTitulo("CADASTRO DE USUARIO");
    
    try {
        std::string nome = lerString("Nome: ");
        std::string email = lerString("Email: ");
        std::string senha = lerString("Senha: ");
        
        std::vector<Usuario> usuarios = Usuario::carregarUsuarios();
        
        for (const auto& u : usuarios) {
            if (u.getEmail() == email) {
                mostrarMensagem("Email ja cadastrado!");
                return;
            }
        }
        
        Usuario novoUsuario(Usuario::obterProximoId(), nome, email, senha, false);
        usuarios.push_back(novoUsuario);
        Usuario::salvarUsuarios(usuarios);
        
        mostrarMensagem("Usuario cadastrado com sucesso!");
    } catch (const ValidationException& e) {
        mostrarMensagem("Erro de validação: " + std::string(e.what()));
    } catch (const FileException& e) {
        mostrarMensagem("Erro de arquivo: " + std::string(e.what()));
    } catch (const MarketplaceException& e) {
        mostrarMensagem("Erro: " + std::string(e.what()));
    } catch (const std::exception& e) {
        mostrarMensagem("Erro inesperado: " + std::string(e.what()));
    }
}

void Interface::menuPrincipal() {
    clear();
    desenharTitulo("MARKETPLACE - MENU PRINCIPAL");
    
    mvprintw(2, 2, "Bem-vindo, %s!", usuarioLogado->getNome().c_str());
    
    std::vector<std::string> opcoes = {
        "1. Listar Produtos",
        "2. Adicionar Produto",
        "3. Editar Meus Produtos",
        "4. Excluir Meus Produtos",
        "5. Visualizar Carrinho",
        "6. Meus Pedidos",
        "7. Cancelar Pedido",
        "8. Logout"
    };
    
    int escolha = selecionarOpcao(opcoes);
    
    switch (escolha) {
        case 0: listarProdutos(); break;
        case 1: adicionarProduto(); break;
        case 2: editarProduto(); break;
        case 3: excluirProduto(); break;
        case 4: visualizarCarrinho(); break;
        case 5: meusPedidos(); break;
        case 6: cancelarPedido(); break;
        case 7: 
            usuarioLogado = nullptr;
            if (carrinho) {
                delete carrinho;
                carrinho = nullptr;
            }
            break;
    }
}

void Interface::menuAdmin() {
    clear();
    desenharTitulo("MARKETPLACE - MENU ADMINISTRADOR");
    
    std::vector<std::string> opcoes = {
        "1. Gerenciar Usuarios",
        "2. Gerenciar Produtos",
        "3. Gerenciar Pedidos",
        "4. Estatisticas",
        "5. Logout"
    };
    
    int escolha = selecionarOpcao(opcoes);
    
    switch (escolha) {
        case 0: gerenciarUsuarios(); break;
        case 1: gerenciarProdutos(); break;
        case 2: gerenciarPedidos(); break;
        case 3: estatisticas(); break;
        case 4:
            usuarioLogado = nullptr;
            if (carrinho) {
                delete carrinho;
                carrinho = nullptr;
            }
            break;
    }
}

void Interface::listarProdutos() {
    clear();
    desenharTitulo("LISTA DE PRODUTOS");
    
    try {
        std::vector<Produto> produtos = Produto::carregarProdutos();
        
        if (produtos.empty()) {
            mostrarMensagem("Nenhum produto cadastrado.");
            return;
        }
        
        mvprintw(3, 2, "Filtrar por nome (deixe vazio para listar todos): ");
        std::string filtro = lerString("");
        
        if (!filtro.empty()) {
            produtos = Produto::filtrarPorNome(produtos, filtro);
        }
        
        clear();
        desenharTitulo("PRODUTOS ENCONTRADOS");
        
        int linha = 3;
        for (size_t i = 0; i < produtos.size() && linha < LINES - 5; ++i) {
            const auto& p = produtos[i];
            mvprintw(linha, 2, "%d. %s - R$ %.2f (Qtd: %d)", 
                     static_cast<int>(i + 1), p.getNome().c_str(), p.getPreco(), p.getQuantidade());
            linha++;
        }
        
        mvprintw(linha + 1, 2, "Digite o numero do produto para ver detalhes (0 para voltar): ");
        int escolha = lerInt("");
        
        if (escolha > 0 && escolha <= static_cast<int>(produtos.size())) {
            detalheProduto(produtos[escolha - 1]);
        }
    } catch (const FileException& e) {
        mostrarMensagem("Erro ao carregar produtos: " + std::string(e.what()));
    } catch (const MarketplaceException& e) {
        mostrarMensagem("Erro: " + std::string(e.what()));
    } catch (const std::exception& e) {
        mostrarMensagem("Erro inesperado: " + std::string(e.what()));
    }
}

void Interface::detalheProduto(const Produto& produto) {
    clear();
    desenharTitulo("DETALHES DO PRODUTO");
    
    mvprintw(3, 2, "Nome: %s", produto.getNome().c_str());
    mvprintw(4, 2, "Descricao: %s", produto.getDescricao().c_str());
    mvprintw(5, 2, "Preco: R$ %.2f", produto.getPreco());
    mvprintw(6, 2, "Quantidade: %d", produto.getQuantidade());
    mvprintw(7, 2, "Categoria: %s", produto.getCategoria().c_str());
    
    std::vector<std::string> opcoes = {
        "1. Adicionar ao Carrinho",
        "2. Comprar Agora",
        "3. Voltar"
    };
    
    int escolha = selecionarOpcao(opcoes);
    
    switch (escolha) {
        case 0: {
            int quantidade = lerInt("Quantidade desejada: ");
            if (quantidade > 0 && quantidade <= produto.getQuantidade()) {
                carrinho->adicionarItem(produto.getId(), quantidade, produto.getPreco());
                mostrarMensagem("Produto adicionado ao carrinho!");
            } else {
                mostrarMensagem("Quantidade invalida!");
            }
            break;
        }
        case 1: {
            int quantidade = lerInt("Quantidade desejada: ");
            if (quantidade > 0 && quantidade <= produto.getQuantidade()) {
                Carrinho carrinhoTemp(usuarioLogado->getId());
                carrinhoTemp.adicionarItem(produto.getId(), quantidade, produto.getPreco());
                Pedido pedido = carrinhoTemp.finalizarCompra();
                
                std::vector<Pedido> pedidos = Pedido::carregarPedidos();
                pedidos.push_back(pedido);
                Pedido::salvarPedidos(pedidos);
                
                std::vector<Produto> produtos = Produto::carregarProdutos();
                for (auto& p : produtos) {
                    if (p.getId() == produto.getId()) {
                        p.setQuantidade(p.getQuantidade() - quantidade);
                        break;
                    }
                }
                Produto::salvarProdutos(produtos);
                
                mostrarMensagem("Compra realizada com sucesso!");
            } else {
                mostrarMensagem("Quantidade invalida!");
            }
            break;
        }
    }
}

void Interface::adicionarProduto() {
    clear();
    desenharTitulo("ADICIONAR PRODUTO");
    
    std::string nome = lerString("Nome do produto: ");
    std::string descricao = lerString("Descricao: ");
    double preco = lerDouble("Preco: R$ ");
    int quantidade = lerInt("Quantidade: ");
    std::string categoria = lerString("Categoria: ");
    
    Produto novoProduto(Produto::obterProximoId(), nome, descricao, preco, quantidade, usuarioLogado->getId(), categoria);
    
    std::vector<Produto> produtos = Produto::carregarProdutos();
    produtos.push_back(novoProduto);
    Produto::salvarProdutos(produtos);
    
    mostrarMensagem("Produto cadastrado com sucesso!");
}

void Interface::editarProduto() {
    clear();
    desenharTitulo("EDITAR PRODUTO");
    
    std::vector<Produto> produtos = Produto::carregarProdutos();
    std::vector<Produto> meusProdutos;
    
    for (const auto& p : produtos) {
        if (p.getVendedorId() == usuarioLogado->getId()) {
            meusProdutos.push_back(p);
        }
    }
    
    if (meusProdutos.empty()) {
        mostrarMensagem("Voce nao possui produtos cadastrados.");
        return;
    }
    
    int linha = 3;
    for (size_t i = 0; i < meusProdutos.size(); ++i) {
        mvprintw(linha + i, 2, "%d. %s - R$ %.2f", 
                 static_cast<int>(i + 1), meusProdutos[i].getNome().c_str(), meusProdutos[i].getPreco());
    }
    
    int escolha = lerInt("Digite o numero do produto para editar (0 para voltar): ");
    
    if (escolha > 0 && escolha <= static_cast<int>(meusProdutos.size())) {
        Produto& produto = meusProdutos[escolha - 1];
        
        std::string nome = lerString("Novo nome (" + produto.getNome() + "): ");
        if (!nome.empty()) produto.setNome(nome);
        
        std::string descricao = lerString("Nova descricao (" + produto.getDescricao() + "): ");
        if (!descricao.empty()) produto.setDescricao(descricao);
        
        std::string precoStr = lerString("Novo preco (atual: " + std::to_string(produto.getPreco()) + "): ");
        if (!precoStr.empty()) produto.setPreco(std::stod(precoStr));
        
        std::string qtdStr = lerString("Nova quantidade (atual: " + std::to_string(produto.getQuantidade()) + "): ");
        if (!qtdStr.empty()) produto.setQuantidade(std::stoi(qtdStr));
        
        for (auto& p : produtos) {
            if (p.getId() == produto.getId()) {
                p = produto;
                break;
            }
        }
        
        Produto::salvarProdutos(produtos);
        mostrarMensagem("Produto atualizado com sucesso!");
    }
}

void Interface::excluirProduto() {
    clear();
    desenharTitulo("EXCLUIR PRODUTO");
    
    std::vector<Produto> produtos = Produto::carregarProdutos();
    std::vector<Produto> meusProdutos;
    
    for (const auto& p : produtos) {
        if (p.getVendedorId() == usuarioLogado->getId()) {
            meusProdutos.push_back(p);
        }
    }
    
    if (meusProdutos.empty()) {
        mostrarMensagem("Voce nao possui produtos cadastrados.");
        return;
    }
    
    int linha = 3;
    for (size_t i = 0; i < meusProdutos.size(); ++i) {
        mvprintw(linha + i, 2, "%d. %s - R$ %.2f", 
                 static_cast<int>(i + 1), meusProdutos[i].getNome().c_str(), meusProdutos[i].getPreco());
    }
    
    int escolha = lerInt("Digite o numero do produto para excluir (0 para voltar): ");
    
    if (escolha > 0 && escolha <= static_cast<int>(meusProdutos.size())) {
        const Produto& produto = meusProdutos[escolha - 1];
        
        if (confirmarAcao("Tem certeza que deseja excluir o produto '" + produto.getNome() + "'?")) {
            produtos.erase(std::remove_if(produtos.begin(), produtos.end(),
                [&produto](const Produto& p) { return p.getId() == produto.getId(); }), produtos.end());
            
            Produto::salvarProdutos(produtos);
            mostrarMensagem("Produto excluido com sucesso!");
        }
    }
}

void Interface::visualizarCarrinho() {
    clear();
    desenharTitulo("MEU CARRINHO");
    
    if (carrinho->vazio()) {
        mostrarMensagem("Carrinho vazio.");
        return;
    }
    
    std::vector<ItemPedido> itens = carrinho->getItens();
    std::vector<Produto> produtos = Produto::carregarProdutos();
    
    int linha = 3;
    for (const auto& item : itens) {
        for (const auto& produto : produtos) {
            if (produto.getId() == item.produtoId) {
                mvprintw(linha, 2, "%s - Qtd: %d - R$ %.2f (Total: R$ %.2f)",
                         produto.getNome().c_str(), item.quantidade, item.precoUnitario,
                         item.quantidade * item.precoUnitario);
                linha++;
                break;
            }
        }
    }
    
    mvprintw(linha + 1, 2, "Total do carrinho: R$ %.2f", carrinho->calcularTotal());
    
    std::vector<std::string> opcoes = {
        "1. Finalizar Compra",
        "2. Remover Item",
        "3. Voltar"
    };
    
    int escolha = selecionarOpcao(opcoes);
    
    switch (escolha) {
        case 0:
            finalizarCompra();
            break;
        case 1: {
            int produtoId = lerInt("ID do produto para remover: ");
            carrinho->removerItem(produtoId);
            mostrarMensagem("Item removido do carrinho!");
            break;
        }
    }
}

void Interface::finalizarCompra() {
    if (carrinho->vazio()) {
        mostrarMensagem("Carrinho vazio!");
        return;
    }
    
    if (confirmarAcao("Confirma a finalizacao da compra?")) {
        Pedido pedido = carrinho->finalizarCompra();
        
        std::vector<Pedido> pedidos = Pedido::carregarPedidos();
        pedidos.push_back(pedido);
        Pedido::salvarPedidos(pedidos);
        
        std::vector<Produto> produtos = Produto::carregarProdutos();
        for (const auto& item : pedido.getItens()) {
            for (auto& produto : produtos) {
                if (produto.getId() == item.produtoId) {
                    produto.setQuantidade(produto.getQuantidade() - item.quantidade);
                    break;
                }
            }
        }
        Produto::salvarProdutos(produtos);
        
        mostrarMensagem("Compra finalizada com sucesso!");
    }
}

void Interface::meusPedidos() {
    clear();
    desenharTitulo("MEUS PEDIDOS");
    
    std::vector<Pedido> pedidos = Pedido::obterPedidosUsuario(usuarioLogado->getId());
    
    if (pedidos.empty()) {
        mostrarMensagem("Nenhum pedido encontrado.");
        return;
    }
    
    int linha = 3;
    for (const auto& pedido : pedidos) {
        mvprintw(linha, 2, "Pedido #%d - Status: %s - Total: R$ %.2f",
                 pedido.getId(), Pedido::statusToString(pedido.getStatus()).c_str(), pedido.getTotal());
        linha++;
    }
    
    mostrarMensagem("Pressione uma tecla para continuar.");
}

void Interface::cancelarPedido() {
    clear();
    desenharTitulo("CANCELAR PEDIDO");
    
    std::vector<Pedido> pedidos = Pedido::obterPedidosUsuario(usuarioLogado->getId());
    std::vector<Pedido> pedidosCancelaveis;
    
    for (const auto& pedido : pedidos) {
        if (pedido.getStatus() == PENDENTE || pedido.getStatus() == PROCESSANDO) {
            pedidosCancelaveis.push_back(pedido);
        }
    }
    
    if (pedidosCancelaveis.empty()) {
        mostrarMensagem("Nenhum pedido pode ser cancelado no momento.");
        return;
    }
    
    int linha = 3;
    for (size_t i = 0; i < pedidosCancelaveis.size(); ++i) {
        const auto& pedido = pedidosCancelaveis[i];
        mvprintw(linha + i, 2, "%d. Pedido #%d - Status: %s - Total: R$ %.2f",
                 static_cast<int>(i + 1), pedido.getId(), 
                 Pedido::statusToString(pedido.getStatus()).c_str(), pedido.getTotal());
    }
    
    int escolha = lerInt("Digite o numero do pedido para cancelar (0 para voltar): ");
    
    if (escolha > 0 && escolha <= static_cast<int>(pedidosCancelaveis.size())) {
        if (confirmarAcao("Tem certeza que deseja cancelar este pedido?")) {
            std::vector<Pedido> todosPedidos = Pedido::carregarPedidos();
            for (auto& pedido : todosPedidos) {
                if (pedido.getId() == pedidosCancelaveis[escolha - 1].getId()) {
                    pedido.setStatus(CANCELADO);
                    break;
                }
            }
            Pedido::salvarPedidos(todosPedidos);
            mostrarMensagem("Pedido cancelado com sucesso!");
        }
    }
}

void Interface::gerenciarUsuarios() {
    clear();
    desenharTitulo("GERENCIAR USUARIOS");
    
    std::vector<Usuario> usuarios = Usuario::carregarUsuarios();
    
    int linha = 3;
    for (const auto& usuario : usuarios) {
        mvprintw(linha, 2, "ID: %d - Nome: %s - Email: %s - Admin: %s",
                 usuario.getId(), usuario.getNome().c_str(), usuario.getEmail().c_str(),
                 usuario.getIsAdmin() ? "Sim" : "Nao");
        linha++;
    }
    
    mostrarMensagem("Pressione uma tecla para continuar.");
}

void Interface::gerenciarProdutos() {
    clear();
    desenharTitulo("GERENCIAR PRODUTOS (ADMIN)");
    
    std::vector<Produto> produtos = Produto::carregarProdutos();
    
    if (produtos.empty()) {
        mostrarMensagem("Nenhum produto cadastrado.");
        return;
    }
    
    int linha = 3;
    for (size_t i = 0; i < produtos.size() && linha < LINES - 5; ++i) {
        const auto& p = produtos[i];
        mvprintw(linha, 2, "%d. %s - R$ %.2f - Vendedor ID: %d",
                 static_cast<int>(i + 1), p.getNome().c_str(), p.getPreco(), p.getVendedorId());
        linha++;
    }
    
    int escolha = lerInt("Digite o numero do produto para excluir (0 para voltar): ");
    
    if (escolha > 0 && escolha <= static_cast<int>(produtos.size())) {
        const Produto& produto = produtos[escolha - 1];
        if (confirmarAcao("Excluir produto '" + produto.getNome() + "'?")) {
            produtos.erase(produtos.begin() + escolha - 1);
            Produto::salvarProdutos(produtos);
            mostrarMensagem("Produto excluido!");
        }
    }
}

void Interface::gerenciarPedidos() {
    clear();
    desenharTitulo("GERENCIAR PEDIDOS");
    
    std::vector<Pedido> pedidos = Pedido::carregarPedidos();
    
    if (pedidos.empty()) {
        mostrarMensagem("Nenhum pedido encontrado.");
        return;
    }
    
    int linha = 3;
    for (const auto& pedido : pedidos) {
        mvprintw(linha, 2, "Pedido #%d - Usuario: %d - Status: %s - Total: R$ %.2f",
                 pedido.getId(), pedido.getUsuarioId(), 
                 Pedido::statusToString(pedido.getStatus()).c_str(), pedido.getTotal());
        linha++;
    }
    
    mostrarMensagem("Pressione uma tecla para continuar.");
}

void Interface::estatisticas() {
    clear();
    desenharTitulo("ESTATISTICAS DO SISTEMA");
    
    std::vector<Usuario> usuarios = Usuario::carregarUsuarios();
    std::vector<Produto> produtos = Produto::carregarProdutos();
    std::vector<Pedido> pedidos = Pedido::carregarPedidos();
    
    mvprintw(3, 2, "Total de usuarios: %d", static_cast<int>(usuarios.size()));
    mvprintw(4, 2, "Total de produtos: %d", static_cast<int>(produtos.size()));
    mvprintw(5, 2, "Total de pedidos: %d", static_cast<int>(pedidos.size()));
    
    double totalVendas = 0.0;
    for (const auto& pedido : pedidos) {
        if (pedido.getStatus() != CANCELADO) {
            totalVendas += pedido.getTotal();
        }
    }
    mvprintw(6, 2, "Total em vendas: R$ %.2f", totalVendas);
    
    mostrarMensagem("Pressione uma tecla para continuar.");
}

void Interface::mostrarMensagem(const std::string& mensagem) {
    mvprintw(LINES - 2, 2, "%s", mensagem.c_str());
    refresh();
    getch();
}

bool Interface::confirmarAcao(const std::string& pergunta) {
    mvprintw(LINES - 3, 2, "%s (s/n): ", pergunta.c_str());
    refresh();
    int ch = getch();
    return (ch == 's' || ch == 'S');
}

std::string Interface::lerString(const std::string& prompt, int maxLen) {
    echo();
    mvprintw(LINES - 2, 2, "%s", prompt.c_str());
    refresh();
    
    char buffer[256];
    getnstr(buffer, std::min(maxLen, 255));
    noecho();
    
    return std::string(buffer);
}

double Interface::lerDouble(const std::string& prompt) {
    try {
        std::string str = lerString(prompt);
        if (str.empty()) return 0.0;
        
        double value = std::stod(str);
        if (value < 0) {
            throw ValidationException("Valor deve ser positivo");
        }
        return value;
    } catch (const std::invalid_argument& e) {
        throw ValidationException("Formato numérico inválido");
    } catch (const std::out_of_range& e) {
        throw ValidationException("Valor fora do range permitido");
    }
}

int Interface::lerInt(const std::string& prompt) {
    try {
        std::string str = lerString(prompt);
        if (str.empty()) return 0;
        
        int value = std::stoi(str);
        if (value < 0) {
            throw ValidationException("Valor deve ser positivo");
        }
        return value;
    } catch (const std::invalid_argument& e) {
        throw ValidationException("Formato numérico inválido");
    } catch (const std::out_of_range& e) {
        throw ValidationException("Valor fora do range permitido");
    }
}

void Interface::desenharTitulo(const std::string& titulo) {
    attron(COLOR_PAIR(2));
    mvprintw(0, (COLS - titulo.length()) / 2, "%s", titulo.c_str());
    attroff(COLOR_PAIR(2));
    mvprintw(1, 0, std::string(COLS, '-').c_str());
}

void Interface::desenharMenu(const std::vector<std::string>& opcoes, int selecionado) {
    for (size_t i = 0; i < opcoes.size(); ++i) {
        if (static_cast<int>(i) == selecionado) {
            attron(A_STANDOUT);
        }
        mvprintw(4 + i, 2, "%s", opcoes[i].c_str());
        if (static_cast<int>(i) == selecionado) {
            attroff(A_STANDOUT);
        }
    }
}

int Interface::selecionarOpcao(const std::vector<std::string>& opcoes) {
    int selecionado = 0;
    int tecla;
    
    while (true) {
        desenharMenu(opcoes, selecionado);
        refresh();
        
        tecla = getch();
        switch (tecla) {
            case KEY_UP:
                selecionado = (selecionado - 1 + opcoes.size()) % opcoes.size();
                break;
            case KEY_DOWN:
                selecionado = (selecionado + 1) % opcoes.size();
                break;
            case '\n':
            case '\r':
            case KEY_ENTER:
                return selecionado;
            case '1': case '2': case '3': case '4': case '5':
            case '6': case '7': case '8': case '9':
                if (tecla - '1' < static_cast<int>(opcoes.size())) {
                    return tecla - '1';
                }
                break;
        }
    }
}
