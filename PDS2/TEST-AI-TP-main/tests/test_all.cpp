#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include "../include/Usuario.hpp"
#include "../include/Produto.hpp"
#include "../include/Pedido.hpp"
#include "../include/Carrinho.hpp"

TEST_CASE("Usuario - Criacao e getters") {
    Usuario usuario(1, "Teste", "teste@email.com", "senha123", false);
    
    CHECK(usuario.getId() == 1);
    CHECK(usuario.getNome() == "Teste");
    CHECK(usuario.getEmail() == "teste@email.com");
    CHECK(usuario.getSenha() == "senha123");
    CHECK(usuario.getIsAdmin() == false);
}

TEST_CASE("Usuario - Setters") {
    Usuario usuario;
    
    usuario.setNome("Novo Nome");
    usuario.setEmail("novo@email.com");
    usuario.setSenha("novasenha");
    usuario.setIsAdmin(true);
    
    CHECK(usuario.getNome() == "Novo Nome");
    CHECK(usuario.getEmail() == "novo@email.com");
    CHECK(usuario.getSenha() == "novasenha");
    CHECK(usuario.getIsAdmin() == true);
}

TEST_CASE("Usuario - Serializacao") {
    Usuario usuario(5, "Maria", "maria@test.com", "pass123", true);
    std::string serializado = usuario.toString();
    Usuario deserializado = Usuario::fromString(serializado);
    
    CHECK(deserializado.getId() == 5);
    CHECK(deserializado.getNome() == "Maria");
    CHECK(deserializado.getEmail() == "maria@test.com");
    CHECK(deserializado.getSenha() == "pass123");
    CHECK(deserializado.getIsAdmin() == true);
}

TEST_CASE("Produto - Criacao e getters") {
    Produto produto(1, "Notebook", "Notebook Gamer", 2500.99, 10, 1, "Informatica");
    
    CHECK(produto.getId() == 1);
    CHECK(produto.getNome() == "Notebook");
    CHECK(produto.getDescricao() == "Notebook Gamer");
    CHECK(produto.getPreco() == 2500.99);
    CHECK(produto.getQuantidade() == 10);
    CHECK(produto.getVendedorId() == 1);
    CHECK(produto.getCategoria() == "Informatica");
}

TEST_CASE("Produto - Setters") {
    Produto produto;
    
    produto.setNome("Smartphone");
    produto.setDescricao("iPhone 15");
    produto.setPreco(3999.99);
    produto.setQuantidade(5);
    produto.setCategoria("Celulares");
    
    CHECK(produto.getNome() == "Smartphone");
    CHECK(produto.getDescricao() == "iPhone 15");
    CHECK(produto.getPreco() == 3999.99);
    CHECK(produto.getQuantidade() == 5);
    CHECK(produto.getCategoria() == "Celulares");
}

TEST_CASE("Produto - Serializacao") {
    Produto produto(3, "Mouse", "Mouse Gamer RGB", 150.99, 25, 1, "Informatica");
    std::string serializado = produto.toString();
    Produto deserializado = Produto::fromString(serializado);
    
    CHECK(deserializado.getId() == 3);
    CHECK(deserializado.getNome() == "Mouse");
    CHECK(deserializado.getDescricao() == "Mouse Gamer RGB");
    CHECK(deserializado.getPreco() == 150.99);
    CHECK(deserializado.getQuantidade() == 25);
    CHECK(deserializado.getVendedorId() == 1);
    CHECK(deserializado.getCategoria() == "Informatica");
}

TEST_CASE("Pedido - Criacao e getters") {
    std::vector<ItemPedido> itens;
    itens.push_back(ItemPedido(1, 2, 50.00));
    itens.push_back(ItemPedido(2, 1, 100.00));
    
    Pedido pedido(1, 123, itens);
    
    CHECK(pedido.getId() == 1);
    CHECK(pedido.getUsuarioId() == 123);
    CHECK(pedido.getTotal() == 200.00);
    CHECK(pedido.getStatus() == PENDENTE);
}

TEST_CASE("Pedido - Status change") {
    std::vector<ItemPedido> itens;
    itens.push_back(ItemPedido(1, 1, 100.00));
    
    Pedido pedido(2, 456, itens);
    
    pedido.setStatus(ENVIADO);
    CHECK(pedido.getStatus() == ENVIADO);
    
    pedido.setStatus(ENTREGUE);
    CHECK(pedido.getStatus() == ENTREGUE);
}

TEST_CASE("Pedido - Serializacao") {
    std::vector<ItemPedido> itens;
    itens.push_back(ItemPedido(5, 2, 75.50));
    
    Pedido pedido(10, 5, itens, PROCESSANDO);
    std::string serializado = pedido.toString();
    Pedido deserializado = Pedido::fromString(serializado);
    
    CHECK(deserializado.getId() == 10);
    CHECK(deserializado.getUsuarioId() == 5);
    CHECK(deserializado.getStatus() == PROCESSANDO);
    CHECK(deserializado.getTotal() == 151.00);  // 2 * 75.50
}

TEST_CASE("Carrinho - Funcionalidades basicas") {
    Carrinho carrinho(1);
    
    CHECK(carrinho.vazio() == true);
    CHECK(carrinho.calcularTotal() == 0.00);
}

TEST_CASE("Carrinho - Adicionar itens") {
    Carrinho carrinho(1);
    
    CHECK(carrinho.vazio() == true);
    
    carrinho.adicionarItem(1, 2, 50.00);
    CHECK(carrinho.vazio() == false);
    CHECK(carrinho.calcularTotal() == 100.00);
    
    carrinho.adicionarItem(2, 1, 75.00);
    CHECK(carrinho.calcularTotal() == 175.00);
}

TEST_CASE("Carrinho - Remover itens") {
    Carrinho carrinho(1);
    
    carrinho.adicionarItem(1, 2, 50.00);
    carrinho.adicionarItem(2, 1, 75.00);
    
    CHECK(carrinho.calcularTotal() == 175.00);
    
    carrinho.removerItem(1);
    CHECK(carrinho.calcularTotal() == 75.00);
    
    carrinho.limpar();
    CHECK(carrinho.vazio() == true);
    CHECK(carrinho.calcularTotal() == 0.00);
}

TEST_CASE("Carrinho - Obter itens") {
    Carrinho carrinho(1);
    
    carrinho.adicionarItem(1, 2, 50.00);
    carrinho.adicionarItem(2, 3, 25.00);
    
    std::vector<ItemPedido> itens = carrinho.getItens();
    
    CHECK(itens.size() == 2);
    CHECK(itens[0].produtoId == 1);
    CHECK(itens[0].quantidade == 2);
    CHECK(itens[0].precoUnitario == 50.00);
    CHECK(itens[1].produtoId == 2);
    CHECK(itens[1].quantidade == 3);
    CHECK(itens[1].precoUnitario == 25.00);
}

TEST_CASE("ItemPedido - Construtor") {
    ItemPedido item(5, 3, 99.99);
    
    CHECK(item.produtoId == 5);
    CHECK(item.quantidade == 3);
    CHECK(item.precoUnitario == 99.99);
}
