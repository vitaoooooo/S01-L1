class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }
    descrever() {
        return `Criatura: ${this.criatura} | Nível de perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    #fichas;

    constructor(numero) {
        this.numero = numero;
        this.#fichas = [];
    }
    anotar(criatura, nivelDePerigo) {
        const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(ficha);
    }
    exibirFichas() {
        console.log(`\nDiário número ${this.numero}:`);

        this.#fichas.forEach(ficha => {
            console.log(ficha.descrever());
        });
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios;

    constructor(dono) {
        this.dono = dono;
        this.#funcionarios = [];
    }
    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }
    abrirAsPortas() {
        console.log(`\nCabana do Mistério | Dono: ${this.dono}`);

        this.#funcionarios.forEach(funcionario => {
            console.log(`${funcionario.nome} | Cargo: ${funcionario.cargo}`);
        });
    }
}

const diario = new DiarioMisterioso(3);

diario.anotar('Gnomo', 2);
diario.anotar('Bill Cipher', 10);
diario.anotar('Sósia', 7);

diario.exibirFichas();

const funcionario1 = new Funcionario('Dipper Pines', 'Pesquisador');
const funcionario2 = new Funcionario('Mabel Pines', 'Atendente');

const cabana = new CabanaDoMisterio('Stanley Pines');

cabana.contratar(funcionario1);
cabana.contratar(funcionario2);

cabana.abrirAsPortas();

// Composição: o DiarioMisterioso cria as FichaDeCriatura dentro do método anotar().
// Agregação: os Funcionarios são criados antes e depois adicionados à CabanaDoMisterio.
