#include <map>
#include <iostream>
#include <fstream>
#include <string>
#include <cctype>

int main() {
    std::string filename;
    std::cin >> filename;

    std::ifstream file(filename);
    if (!file) {
        std::cerr << "Erro ao abrir o arquivo.\n";
        return 1;
    }

    std::map<std::string, int> palavras;
    std::string palavra;
    char caractere;

    while (file.get(caractere)) {
        if (std::isalnum(caractere)) {
            if (caractere >= 'A' && caractere <= 'Z') {
                caractere += ('a' - 'A');  
            }
            palavra += caractere;
        } else if (!palavra.empty()) {
            palavras[palavra]++;  
            palavra.clear();
        }
    }

    if (!palavra.empty()) {
        palavras[palavra]++;
    }

    for (const auto& par : palavras) {
        std::cout << par.first << " " << par.second << '\n';
    }

    return 0;
}
