using System;
using System.Collections.Generic;


public class Feitico
{
    public string Nome { get; set; }

    public Feitico(string nome)
    {
        Nome = nome;
    }

    public void Conjurar()
    {
        Console.WriteLine($"Feitiço conjurado: {Nome}!");
    }
}

public class Grimorio
{
    private List<Feitico> _feiticos;

    public Grimorio()
    {
        _feiticos = new List<Feitico>();
    }

    public void Registrar(string nomeFeitico)
    {
        Feitico feitico = new Feitico(nomeFeitico);

        _feiticos.Add(feitico);
    }

    public void ListarFeiticos()
    {
        Console.WriteLine($"\nQuantidade de feitiços: {_feiticos.Count}");

        foreach (var feitico in _feiticos)
        {
            feitico.Conjurar();
        }
    }
}

public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        Nome = nome;
        Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"Nome: {Nome} | Função: {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio Grimorio { get; private set; }

    private List<Companheiro> _companheiros;

    public Maga(string nome)
    {
        Nome = nome;
        Grimorio = new Grimorio();
        _companheiros = new List<Companheiro>();
    }

    public void RecrutarCompanheiro(Companheiro c)
    {
        _companheiros.Add(c);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\nGrupo de {Nome}:");

        foreach (var companheiro in _companheiros)
        {
            companheiro.Apresentar();
        }
    }
}


public class Program
{
    public static void Main(string[] args)
    {
        Companheiro fern = new Companheiro("Fern", "Maga Aprendiz");
        Companheiro stark = new Companheiro("Stark", "Guerreiro");

        Maga frieren = new Maga("Frieren");

        frieren.RecrutarCompanheiro(fern);
        frieren.RecrutarCompanheiro(stark);

        frieren.Grimorio.Registrar("Zoltraak");
        frieren.Grimorio.Registrar("Magia de Cura");
        frieren.Grimorio.Registrar("Magia de Proteção");

        frieren.MostrarGrupo();
        frieren.Grimorio.ListarFeiticos();

        Console.WriteLine("\nApresentação direta de Stark:");
        stark.Apresentar();

        // Composição: Frieren cria seu Grimorio no construtor O Grimorio cria os Feiticos dentro do método Registrar()
        // Agregação: Fern e Stark existem antes de Frieren e são adicionados à lista por meio de RecrutarCompanheiro()
        
    }
}
