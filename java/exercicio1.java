public class Exercicio1 {
    public static void main(String[] args) {
        Morador mago = new Mago("Howl", "Transformação em pássaro");
        Morador demonio = new DemonioDoFogo("Calcifer");

        mago.apresentar();
        demonio.apresentar();

        // Morador morador = new Morador("Sophie");
    }
}

abstract class Morador {

    private String nome;

    public Morador(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void apresentar();
}

class Mago extends Morador {

    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o mago " + getNome() + " e meu feitiço é: " + feitico);
    }
}

class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou o demônio do fogo " + getNome() + " e faço o castelo andar");
    }
}
