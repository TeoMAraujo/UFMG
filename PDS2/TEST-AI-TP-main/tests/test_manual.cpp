#include <iostream>
#include <cassert>
#include "../include/Usuario.hpp"
#include "../include/Produto.hpp"
#include "../include/Pedido.hpp"
#include "../include/Carrinho.hpp"

void testeUsuario() {
    std::cout << "Testando classe Usuario..." << std::endl;
    
    Usuario usuario(1, "Teste", "teste@email.com", "senha123", false);
    
    assert(usuario.getId() == 1);
    assert(usuario.getNome() == "Teste");
    assert(usuario.getEmail() == "teste@email.com");
    assert(usuario.getSenha() == "senha123");
    assert(usuario.getIsAdmin() == false);
    
    usuario.setNome("Novo Nome");
    usuario.setEmail("novo@email.com");
    usuario.setSenha("novasenha");
    usuario.setIsAdmin(true);
    
    assert(usuario.getNome() == "Novo Nome");
    assert(usuario.getEmail() == "novo@email.com");
    assert(usuario.getSenha() == "novasenha");
    assert(usuario.getIsAdmin() == true);
    
    std::cout << "✓ Testes da classe Usuario passaram!" << std::endl;
}

void testeProduto() {
    std::cout << "Testando classe Produto..." << std::endl;
    
    Produto produto(1, "Notebook", "Notebook Gamer", 2500.99, 10, 1, "Informatica");
    
    assert(produto.getId() == 1);
    assert(produto.getNome() == "Notebook");
    assert(produto.getDescricao() == "Notebook Gamer");
    assert(produto.getPreco() == 2500.99);
    assert(produto.getQuantidade() == 10);
    assert(produto.getVendedorId() == 1);
    assert(produto.getCategoria() == "Informatica");
    
    produto.setNome("Mouse");
    produto.setDescricao("Mouse sem fio");
    produto.setPreco(89.90);
    produto.setQuantidade(50);
    produto.setCategoria("Acessorios");
    
    assert(produto.getNome() == "Mouse");
    assert(produto.getDescricao() == "Mouse sem fio");
    assert(produto.getPreco() == 89.90);
    assert(produto.getQuantidade() == 50);
    assert(produto.getCategoria() == "Acessorios");
    
    std::cout << "✓ Testes da classe Produto passaram!" << std::endl;
}

void testeCarrinho() {
    std::cout << "Testando classe Carrinho..." << std::endl;
    
    Carrinho carrinho(1);
    
    assert(carrinho.vazio() == true);
    assert(carrinho.calcularTotal() == 0.0);
    
    carrinho.adicionarItem(1, 2, 50.00);
    assert(carrinho.vazio() == false);
    assert(carrinho.calcularTotal() == 100.00);
    
    carrinho.adicionarItem(2, 1, 75.00);
    assert(carrinho.calcularTotal() == 175.00);
    
    carrinho.removerItem(1);
    assert(carrinho.calcularTotal() == 75.00);
    
    carrinho.limpar();
    assert(carrinho.vazio() == true);
    assert(carrinho.calcularTotal() == 0.00);
    
    std::cout << "✓ Testes da classe Carrinho passaram!" << std::endl;
}

void testePedido() {
    std::cout << "Testando classe Pedido..." << std::endl;
    
    std::vector<ItemPedido> itens;
    itens.push_back(ItemPedido(1, 2, 50.00));
    itens.push_back(ItemPedido(2, 1, 100.00));
    
    Pedido pedido(1, 123, itens);
    
    assert(pedido.getId() == 1);
    assert(pedido.getUsuarioId() == 123);
    assert(pedido.getTotal() == 200.00);
    assert(pedido.getStatus() == PENDENTE);
    
    pedido.setStatus(ENVIADO);
    assert(pedido.getStatus() == ENVIADO);
    
    std::cout << "✓ Testes da classe Pedido passaram!" << std::endl;
}

int main() {
    std::cout << "=== EXECUTANDO TESTES UNITÁRIOS ===" << std::endl << std::endl;
    
    try {
        testeUsuario();
        testeProduto();
        testeCarrinho();
        testePedido();
        
        std::cout << std::endl << "🎉 TODOS OS TESTES PASSARAM COM SUCESSO!" << std::endl;
        return 0;
    } catch (const std::exception& e) {
        std::cout << "❌ ERRO: " << e.what() << std::endl;
        return 1;
    }
}
