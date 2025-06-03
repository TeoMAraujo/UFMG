#include <iostream>
#include <string>
using namespace std;

void exceptionsf(string &pal) {
    string temp;
    for (char c : pal) {
        if (c != ' ' && c != ',' && c != '.') {
            temp += c;
        }
    }
    pal = temp;
}

int verificapalf(string pal) {
    int i = pal.length() - 1;  // Last character index
    int j = 0;                 // First character index
    while (j < i) {
        if (pal[j] != pal[i]) {
            return 0;
        }
        j++;
        i--;
    }
    return 1;
}

int main() {
    string pal;
    getline(cin, pal);
    exceptionsf(pal);

    if (verificapalf(pal)) {
        cout << "SIM";
    } else {
        cout << "NAO";
    }
    return 0;
}
