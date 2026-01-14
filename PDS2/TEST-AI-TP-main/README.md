# _Tema_ 💡
**Marketplace:** Sistema que permite a compra e venda de produto entre entre usuários

# _Integrantes_ 👥
- Gustavo de Oliveira Cardoso Rezende - [GustavoORezende](https://github.com/GustavoORezende)
- Miguel Fidelis Pedrosa Martins - [fidelis05](https://github.com/fidelis05)
- Samara Fernandes Cordeiro - [SamaraCordeiro](https://github.com/SamaraCordeiro)
- Teo Mendes Araujo - [TeoMAraujo](https://github.com/TeoMAraujo)

---

## Descrição do Projeto

Este é um sistema de marketplace desenvolvido em C++11 que permite aos usuários comprar e vender produtos através de uma interface de linha de comando usando ncurses. O sistema oferece funcionalidades completas de e-commerce, incluindo gerenciamento de usuários, produtos, carrinho de compras e pedidos.

## Funcionalidades Implementadas

### Para Usuários Comuns:
- ✅ Criar conta com login e senha
- ✅ Fazer login com email e senha
- ✅ Visualizar lista de produtos com filtros
- ✅ Acessar detalhes completos de produtos
- ✅ Adicionar produtos ao carrinho
- ✅ Remover produtos do carrinho
- ✅ Finalizar compra dos itens do carrinho
- ✅ Comprar produto diretamente
- ✅ Cadastrar novos produtos para venda
- ✅ Visualizar histórico de pedidos
- ✅ Cancelar pedidos pendentes
- ✅ Editar e excluir produtos próprios
- ✅ Confirmações para ações importantes

### Para Administradores:
- ✅ Gerenciar usuários (listar, filtrar, editar, excluir)
- ✅ Gerenciar produtos (listar, filtrar, editar, excluir)
- ✅ Gerenciar pedidos (listar, filtrar, editar, excluir)
- ✅ Visualizar estatísticas do sistema

## Estrutura do Projeto

```
├── bin/                    # Executáveis compilados
├── data/                   # Arquivos de dados persistentes
├── include/                # Arquivos de cabeçalho (.hpp)
├── obj/                    # Arquivos objeto (.o)
├── src/                    # Código fonte (.cpp)
├── tests/                  # Testes unitários
├── Makefile               # Automação de build
└── README.md              # Este arquivo
```

## Classes Principais

### Usuario
- Gerencia informações de usuários
- Implementa autenticação e autorização
- Persistência em arquivo texto

### Produto
- Gerencia catálogo de produtos
- Implementa filtros por nome, categoria e preço
- Controle de estoque

### Pedido
- Gerencia histórico de compras
- Estados: PENDENTE, PROCESSANDO, ENVIADO, ENTREGUE, CANCELADO
- Cálculo automático de totais

### Carrinho
- Gerencia itens antes da compra
- Adicionar/remover produtos
- Cálculo de total

### Interface
- Interface de usuário com ncurses
- Navegação por menus
- Validação de entrada

## Compilação e Execução

### Pré-requisitos
- Compilador C++ com suporte a C++11
- Biblioteca ncurses
- Make
- Doxygen (para documentação)

### Instalação das dependências (Linux/macOS)
```bash
# Ubuntu/Debian
sudo apt-get install libncurses5-dev libncursesw5-dev doxygen

# macOS com Homebrew
brew install ncurses doxygen

# ou use o comando automático
make install-deps
```

### Compilação
```bash
# Compilar o projeto
make

# Compilar e executar
make run

# Limpar arquivos compilados
make clean

# Gerar documentação Doxygen
make docs
```

### Execução
```bash
./bin/marketplace
```

## Documentação

O projeto possui documentação completa gerada com Doxygen:

```bash
# Gerar documentação
make docs

# Abrir documentação no navegador
open docs/html/index.html  # macOS
xdg-open docs/html/index.html  # Linux
```

A documentação inclui:
- **API Reference**: Documentação completa de todas as classes e métodos
- **Diagramas de Classe**: Visualização das relações entre classes
- **Código Fonte**: Navegação pelo código com syntax highlighting
- **Dependências**: Gráficos de dependências entre arquivos
- **Índices**: Busca rápida por classes, métodos e arquivos

## Testes Unitários

O projeto inclui testes unitários abrangentes usando o framework **doctest** (oficial) para todas as classes principais:

```bash
# Executar testes com doctest (recomendado)
make test

# Executar testes com saída detalhada
make test-verbose

# Executar testes manuais (usando assert)
make test-manual
```

### Framework de Testes

- **doctest**: Framework moderno e leve de testes para C++
  - Arquivo: `tests/test_all.cpp` - Testes principais usando doctest
  - 14 casos de teste cobrindo todas as funcionalidades
  - 63+ asserções verificando comportamentos específicos

- **Testes Manuais**: Implementação alternativa usando assert
  - Arquivo: `tests/test_manual.cpp` - Testes usando assert padrão
  - Útil para debug e verificação básica

### Cobertura dos Testes

Os testes cobrem:
- ✅ **Usuario**: Criação, getters/setters, serialização
- ✅ **Produto**: Criação, manipulação, persistência
- ✅ **Pedido**: Criação com itens, mudança de status, serialização
- ✅ **Carrinho**: Adicionar/remover itens, cálculos, finalização
- ✅ **ItemPedido**: Estrutura de dados para itens de pedidos
- ✅ Serialização/deserialização para arquivos
- ✅ Lógica de negócio (cálculos, validações)
- ✅ Persistência de dados

## Persistência de Dados

Os dados são armazenados em arquivos texto na pasta `data/`:
- `usuarios.txt` - Dados dos usuários
- `produtos.txt` - Catálogo de produtos
- `pedidos.txt` - Histórico de pedidos

### Formato dos Arquivos

**usuarios.txt:**
```
id|nome|email|senha|isAdmin
1|Admin|admin@admin.com|admin|1
```

**produtos.txt:**
```
id|nome|descricao|preco|quantidade|vendedorId|categoria
1|Laptop|Notebook Dell|2500.00|5|2|Eletrônicos
```

**pedidos.txt:**
```
id|usuarioId|status|total|dataCompra|itens
1|2|ENTREGUE|289.80|1735599600|2:2:89.90;3:1:199.90
```

## Uso do Sistema

### Login Inicial
- **Admin:** email: `admin@admin.com`, senha: `admin`
- **Usuário:** Criar nova conta ou usar dados de exemplo

### Navegação
- Use as setas do teclado para navegar
- Digite números para selecionar opções
- Pressione Enter para confirmar
- Use 'q' para sair em muitas telas

### Dados de Exemplo
O sistema inclui dados de exemplo para demonstração:
- 3 usuários (incluindo admin)
- 5 produtos variados
- 2 pedidos de exemplo

## Arquitetura

### Padrões Utilizados
- **Separação de Responsabilidades:** Cada classe tem uma responsabilidade específica
- **Encapsulamento:** Dados privados com métodos públicos controlados
- **Persistência:** Serialização customizada para arquivos
- **Interface Uniforme:** Métodos padronizados para todas as classes

### Fluxo Principal
1. Autenticação do usuário
2. Navegação por menus baseados no tipo de usuário
3. Execução de operações CRUD
4. Persistência automática das alterações
5. Confirmações para operações críticas

## Características Técnicas

- **Linguagem:** C++11
- **Interface:** ncurses (Terminal User Interface)
- **Persistência:** Arquivos texto com delimitadores
- **Testes:** Unitários com assert
- **Build:** Makefile
- **Compatibilidade:** Linux, macOS, Windows (com ncurses)

## Cartões CRC
![image](https://github.com/user-attachments/assets/2a512a95-cff4-4781-8a84-7f81776086c7)

## Histórias de Usuário Implementadas

### Usuário:
- ✅ Como usuário, quero criar uma conta com login e senha, para poder acessar o sistema.
- ✅ Como usuário, quero fazer login com meu e-mail e senha, para acessar minha conta com segurança.
- ✅ Como usuário, quero visualizar a lista de produtos à venda e aplicar filtros (nome, categoria, preço), para encontrar o que desejo com facilidade.
- ✅ Como usuário, quero acessar os detalhes de um produto, para ver sua descrição completa e informações do vendedor.
- ✅ Como usuário, quero adicionar produtos ao meu carrinho, para realizar uma compra com múltiplos itens.
- ✅ Como usuário, quero remover produtos do meu carrinho, para gerenciar o que será comprado.
- ✅ Como usuário, quero finalizar a compra dos itens do meu carrinho, para concluir o pedido.
- ✅ Como usuário, quero comprar um produto diretamente da página de anúncio, para agilizar o processo de compra.
- ✅ Como usuário, quero cadastrar um novo produto, informando nome, descrição, preço e quantidade, para colocá-lo à venda.
- ✅ Como usuário, quero visualizar meus pedidos realizados, para acompanhar o histórico de compras.
- ✅ Como usuário, quero cancelar um pedido ainda não processado, para corrigir enganos ou desistências.
- ✅ Como usuário, quero editar ou excluir meus produtos cadastrados, para manter o controle sobre meus anúncios.
- ✅ Como usuário, quero ver uma confirmação ao realizar ações importantes (como deletar produto ou finalizar pedido), para evitar erros.

### Administrador:
- ✅ Como administrador, quero listar, filtrar, editar, excluir e cadastrar usuários, para gerenciar o acesso ao sistema.
- ✅ Como administrador, quero listar, filtrar, editar e excluir produtos cadastrados, para garantir a qualidade e organização do marketplace.
- ✅ Como administrador, quero listar, filtrar, editar e excluir pedidos realizados, para poder resolver problemas e manter o controle das operações.
- ✅ Como administrador, quero visualizar um resumo estatístico (ex: total de usuários, produtos e pedidos), para ter uma visão geral do sistema.

