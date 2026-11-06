import java.util.ArrayList;

public class Exercicio4 {
    public static void main(String[] args) {
        Slime slime = new Slime("Slime da masmorra");
        Mandragora mandragora = new Mandragora("Mandrágora gritante");

        Cozinheiro cozinheiro = new Cozinheiro("Senshi", "mithril");
        cozinheiro.adicionarIngrediente(slime);
        cozinheiro.adicionarIngrediente(mandragora);

        cozinheiro.servirBanquete();

        // COMPOSIÇÃO: a Panela é criada dentro do construtor do Cozinheiro, nasce junto com ele e não existe fora dele (dependência total).
        // AGREGAÇÃO: os Monstros são criados fora, no main, antes do Cozinheiro, que só recebe e guarda referências a eles (ligação fraca).
    }
}

abstract class Monstro {

    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {

    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Secar ao sol e cozinhar em caldo quente";
    }
}

class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Fatiar e fritar na manteiga";
    }
}

class Panela {

    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {

    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome);
        System.out.println("Panela de " + panela.getMaterial());

        for (Monstro monstro : ingredientes) {
            System.out.println(monstro.getNome() + ": " + monstro.receita());
        }
    }
}
