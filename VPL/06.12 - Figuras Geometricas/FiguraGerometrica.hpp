#ifndef FIGURAGEOMETRICA_HPP
#define FIGURAGEOMETRICA_HPP

#include <iostream>
   
class Ponto{
private:
    int x;
    int y;
public:
    Ponto::Ponto(int x, int y) : this->x = x; this->y = y{};
    void setPonto();
    void getPonto();
};

class FiguraGeometrica{};
private:
    Ponto centro;
public:
    virtual void Desenha(); //imprime um ponto no espaço 2D
    virtual float CalculaArea();
};

class FiguraGeometrica::Retangulo{
    Ponto tamanholado;
    virtual void Desenha() override; // é o mesmo comportamento da classe pae, porém exibe a palavra RETANGULO dps
    virtual float CalculaArea() override; // calcula area, dae muda
};
class FiguraGeometrica::Triangulo{
    Ponto basealtura;
    virtual desenha() override; // é o mesmo comportamento da classe pae, porém exibe a palavra TRIANGULO dps
    virtual float calculaArea() override; // calcula area, dae muda
};
class FiguraGeometrica::Circulo{};
    int raio;
    
    virtual desenha() override; // é o mesmo comportamento da classe pae, porém exibe a palavra CIRCULO
// dps
    virtual float calculaArea() override; // calcula area, dae muda
}

#endif
