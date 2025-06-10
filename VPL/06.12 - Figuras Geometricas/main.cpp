#include "FiguraGeometrica.hpp"
#include <vector>
#include <iostream>

int main(){
    std::vector<FiguraGeometrica> figuras;
    char letra;
    
    
    // R = retangulo 
    // C = Circulo 
    // T = triangulo 
    // D = desenha todas as figuras geometricas armazenadas imprimeindo as coordenanos do seu centro e especificando para cada tipo<kOrigin>
    // A = area total ocupada por todas as figuras gemoetricas E termina eeecução
    while (true){
        std::cin >> letra; 
        switch (letra){
            case: 'R'{
                int C1, C2, L1, L2;
                FiguraGeometria retangulo = new Retangulo;
                std::cin << C1 << C2 << L1 << L2;
            
                break;
            } case: 'C'{
                int C1, C2, R;
                FiguraGeometria retangulo = new Retangulo;
               std::cin << C1 << C2 << R;
                break;
            } case: 'T'{
                int C1, C2, B, A;
                FiguraGeometria retangulo = new Retangulo;
                std::cin << C1 << C2 << B << A;
                break;
            } case: 'D'{
                for (FiguraGeometrica it : figuras){
                    std::cout << it.Desenha
                }
                figuras.Desenha;
                break;
            } case: 'E'{
                return 0;
            }
        }
    }
}
