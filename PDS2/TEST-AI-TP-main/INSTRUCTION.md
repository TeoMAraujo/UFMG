6.3 Estrutura do Diretório do Projeto
Uma dica para a estrutura de diretórios ao realizar trabalhos em C++ é utilizar uma organização
semelhante à estrutura mostrada abaixo. Essa estrutura não é obrigatória no sentido de ser fixa, mas
deve possuir organização parecida, podendo-se adicionar novas pastas para bibliotecas de terceiros, etc.
• bin/: Armazena os executáveis gerados pela compilação.
• include/: Contém arquivos de cabeçalho (.hpp) usados no projeto.
• obj/: Guarda arquivos objeto (.o ou .obj) criados durante a compilação.
• src/: Onde estão os arquivos de código-fonte (.cpp).
• tests/: Abriga arquivos de teste para validação do código.
• .gitignore: Lista arquivos e pastas que o Git deve ignorar.
• Makefile: Contém instruções para automatizar a compilação do projeto.
• README.md: Fornece informações sobre o projeto, como descrição e instruções.

6.4 Testes de unidade
Durante o desenvolvimento, o grupo deverá utilizar o framework doctest para implementar os testes de
unidade.
Deve haver pelo menos uma classe de testes para cada uma das principais classes do sistema
(por exemplo, as classes de entidades). Além disso, deve-se apresentar uma cobertura total do código
de pelo menos 60% (a ser verificado utilizando a ferramenta gcovr ).

Veja um exemplo abaixo, que implementa um teste unitário para um método que realiza a operação
aritmética de adição entre dois números inteiros:

```cpp
// Arquivo de origem (programa_teste.cpp)
int adicionar(int a, int b) {
  return a + b;
}

// Arquivo de teste (testes.cpp)
#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include "programa_teste.cpp"

// Método que irá realizar uma sequência de testes de acordo com os resultados esperados
TEST_CASE("Teste de adição") {
  CHECK(adicionar(10, 10) == 20);
  CHECK(adicionar(-1, 1) == 0);
  CHECK(adicionar(0, 0) == 0);
}

int main() {
  doctest::Context context;
  context.addFilter("test-case", "Teste do método de adição");
  return context.run();
}
```
Observe que para execução e implementação do teste unitário, foi referenciado a biblioteca “doctest.h”.
