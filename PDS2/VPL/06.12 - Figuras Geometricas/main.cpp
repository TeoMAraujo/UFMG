#include <iostream>
#include <math.h>
#include <vector>

class Ponto {
public:
  int x;
  int y;

  Ponto(int x, int y) {
    this->x = x;
    this->y = y;
  }
  int getX() { return this->x; }
  int getY() { return this->y; }
};

class FiguraGeometrica {};

protected:
Ponto centro;

public:
virtual void Desenha() { std::cout << centro.x << centro.y; }
} // imprime um ponto no espaço 2D
virtual float CalculaArea() = 0; // func virtual pura

class FiguraGeometrica : public Retangulo {
private:
  Ponto tamanho;

public:
  Retangulo(int x, int y, int x1, int x2) {
    this->centro(x, y);
    this->tamanho(x1, x2);
  }
  virtual void Desenha() override {
    FiguraGeometrica::Desenha();
    std::cout << "RETANGULO";
  } // é o mesmo comportamento da classe pae, 
    // orém exibe a palavra RETANGULO dps
  virtual float CalculaArea() override { return tamanho.getX * tamanho.getY; }
};

class FiguraGeometrica : public Triangulo {
private:
  Ponto basealtura;

public:
  Triangulo(int x, int y, int x1, int x2) {
    this->centro(x, y);
    this->basealtura(x1, x2);
  }
  virtual void Desenha() override {
    FiguraGeometrica::Desenha();
    std::cout << "TRIANGULO";
  }
  virtual float calculaArea() override; // calcula area, dae muda
  return (basealtura.getX * basealtura.getY) / 2;
};

class FiguraGeometrica : public Circulo {};

private:
int raio;

public:
Circulo(int x, int y, int r) {
  this->centro(x, y);
  this->raio = r;
}
virtual void Desenha() override {
  FiguraGeometrica::Desenha();
  std::cout << "RETANGULO";
}
virtual float calculaArea() override; // calcula area, dae muda
return PI * pow(raio, 2);
}

int main() {
  std::vector<FiguraGeometrica> figuras;
  char letra;
  // R = retangulo
  // C = Circulo
  // T = triangulo
  // D = desenha todas as figuras geometricas armazenadas imprimeindo as
  // coordenanos do seu centro e especificando para cada tipo<kOrigin> A = area
  // total ocupada por todas as figuras gemoetricas E termina eeecução
  while (true) {
    std::cin >> letra;
    switch (letra) {
    case 'R':
      int c1, c2, l1, l2;
      FiguraGeometria *retangulo = new Retangulo;
      std::cin << c1 << c2 << l1 << l2;
      push_back(retangulo(c1, c2, l1, l2));
      break;
    case 'C':
      int c1, c1, r;
      FiguraGeometria *circulo = new Circulo;
      std::cin << c1 << c2 << r;
      push_back(circulo(c1, c2, R));
      break;
    case 'T':
      int c1, c2, b, a;
      FiguraGeometria triangulo = new Retangulo;
      std::cin << c1 << c2 << b << a;
      push_back(retangulo(c1, c2, b, a));
      break;
    case 'D':
      for (FiguraGeometrica it : figuras) {
        it.Desenha;
      }
      break;
    case 'E': {
      return 0;
    }
    }
  }
}
