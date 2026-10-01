#include <iostream>
#include <string>

using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda &rival) {
        cout << nome << " esta duelando contra " << rival.nome << "!" << endl;

        rival.energia -= potenciaSom;
    }
};

int main() {
    Banda banda1;
    Banda banda2;

    banda1.nome = "Metallica";
    banda1.integrantes = 4;
    banda1.potenciaSom = 30.0;
    banda1.energia = 100;

    banda2.nome = "Iron Maiden";
    banda2.integrantes = 5;
    banda2.potenciaSom = 25.0;
    banda2.energia = 100;

    banda1.duelar(banda2);

    cout << endl;
    cout << "Status das bandas:" << endl;

    cout << "Banda: " << banda1.nome << endl;
    cout << "Integrantes: " << banda1.integrantes << endl;
    cout << "Potencia do som: " << banda1.potenciaSom << endl;
    cout << "Energia: " << banda1.energia << endl;

    cout << endl;

    cout << "Banda: " << banda2.nome << endl;
    cout << "Integrantes: " << banda2.integrantes << endl;
    cout << "Potencia do som: " << banda2.potenciaSom << endl;
    cout << "Energia: " << banda2.energia << endl;

    return 0;
}
