class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }
    usarHabilidade() {
        throw new Error('O agente deve implementar sua habilidade!');
    }
    entrarEmCombate() {
        console.log(`${this.codinome} | Pistola: ${this.#pistola.modelo} | ${this.usarHabilidade()}`);
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Controla o campo de batalha com suas habilidades.';
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Abre caminho para a equipe com suas habilidades.';
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return 'Enfrenta os inimigos diretamente.';
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(`\nEsquadrão ${this.nome} iniciou a partida!`);

        this.#agentes.forEach(agente => {
            agente.entrarEmCombate();
        });
    }

    listarControladores() {
        return this.#agentes.filter(agente => agente instanceof Controlador);
    }
}

const controlador1 = new Controlador('Brimstone', 'Classic');
const controlador2 = new Controlador('Omen', 'Ghost');
const iniciador = new Iniciador('Sova', 'Sheriff');
const duelista = new Duelista('Jett', 'Frenzy');

const esquadrao = new Esquadrao('Alpha', [
    controlador1,
    controlador2,
    iniciador,
    duelista
]);

esquadrao.iniciarPartida();

console.log('\nControladores do esquadrão:');

esquadrao.listarControladores().forEach(agente => {
    console.log(agente.codinome);
});

const agenteGenerico = new AgenteProtocolo('Agente Genérico', 'Classic');
// agenteGenerico.entrarEmCombate();
