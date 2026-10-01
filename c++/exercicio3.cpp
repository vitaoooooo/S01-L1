#include <iostream>
#include <string>

using namespace std;

class MembroInatel {
protected:
    string nome;
public:

    MembroInatel(string nome) : nome(nome) {}
    virtual void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: "
             << nome << "." << endl;
    }

    virtual ~MembroInatel() {}
};

class Aluno : public MembroInatel {
private:
    string curso;

public:
    Aluno(string nome, string curso)
        : MembroInatel(nome), curso(curso) {}

    void seApresentar() override {
        cout << "Meu nome e " << nome
             << " e estudo no curso de " << curso << "." << endl;
    }
};

class Professor : public MembroInatel {
private:
    string disciplina;

public:

    Professor(string nome, string disciplina)
        : MembroInatel(nome), disciplina(disciplina) {}

    void seApresentar() override {
        cout << "Meu nome e " << nome
             << " e leciono a disciplina de "
             << disciplina << "." << endl;
    }
};

int main() {
    Aluno aluno("Vitor", "Engenharia de Software");
    Professor professor("Carlos", "Programacao");
  
    aluno.seApresentar();
    professor.seApresentar();

    return 0;
}
