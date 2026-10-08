using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        Nome = nome;

        Console.WriteLine($"Entidade registrada: {Nome}");
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"\nEntidade: {Nome}");

        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public int Profundidade { get; private set; }

    public Profundo(string nome, int profundidade)
        : base(nome)
    {
        Profundidade = profundidade;
    }

    public override void Manifestar()
    {
        Console.WriteLine($"\nEntidade: {Nome}");
        Console.WriteLine($"Profundidade: {Profundidade} metros");
        Console.WriteLine("O Profundo emerge das profundezas do oceano!");
    }
}

public class MiGo : EntidadeCosmica
{
    public string Artefato { get; set; }

    public MiGo(string nome, string artefato)
        : base(nome)
    {
        Artefato = artefato;
    }

    public override void Manifestar()
    {
        base.Manifestar();

        Console.WriteLine($"Artefato: {Artefato}");
        Console.WriteLine("O Mi-Go revela sua tecnologia alienígena!");
    }
}


public class Pesquisador
{
    public string Nome { get; set; }

    private List<EntidadeCosmica> _catalogo;

    public Pesquisador(string nome)
    {
        Nome = nome;
        _catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica e)
    {
        _catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\nCatálogo do pesquisador {Nome}");
        Console.WriteLine($"Quantidade de entidades: {_catalogo.Count}");

  
        foreach (var entidade in _catalogo)
        {
            entidade.Manifestar();
        }
    }
}


public class Program
{
    public static void Main(string[] args)
    {
        Profundo profundo = new Profundo("Habitante das Profundezas", 2000);

        MiGo migo = new MiGo("Mi-Go de Yuggoth", "Dispositivo de comunicação");
        migo.Origem = "Yuggoth";

        EntidadeCosmica entidade = new EntidadeCosmica(
            "A Cor que Caiu do Espaço"
        );
      
        Pesquisador henry = new Pesquisador("Henry Armitage");

        henry.Catalogar(profundo);
        henry.Catalogar(migo);
        henry.Catalogar(entidade);

        henry.LerCatalogo();
      
    }
}
