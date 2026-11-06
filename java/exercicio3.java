import java.util.HashMap;

public class Exercicio3 {
    public static void main(String[] args) {
        Alienigena alienigena = new Alienigena("Serpoiano");
        EspiritoYoukai espirito = new EspiritoYoukai("Turbo Vovó");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Hospital abandonado", alienigena);
        mapa.registrar("Túnel", espirito);

        mapa.investigar("Hospital abandonado");
        mapa.investigar("Túnel");
        mapa.investigar("Escola");
    }
}

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {

    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " desce de um disco voador e tenta abduzir quem está por perto");
    }
}

class EspiritoYoukai implements Sobrenatural {

    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " surge do nada e assombra quem está por perto");
    }
}

class MapaDeAvistamentos {

    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);

        if (ser == null) {
            System.out.println(local + " está tranquilo");
        } else {
            ser.manifestar();
        }
    }
}
