#include <iostream>
#include <string>
using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    string getNome() {
        return nome;
    }

    void setNome(string novoNome) {
        nome = novoNome;
    }

    string getArcana() {
        return arcana;
    }

    void setArcana(string novaArcana) {
        arcana = novaArcana;
    }

    int getRank() {
        return rank;
    }

    void setRank(int novoRank) {
        rank = novoRank;
    }

    void subirRank() {
        rank++;
    }
};

int main() {
    LinkSocial link;

    link.setNome("Morgana");
    link.setArcana("Magician");
    link.setRank(1);

    link.subirRank();

    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;

    return 0;
}
