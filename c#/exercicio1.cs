using System;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    public int Circulo { get; private set; }

    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto, int circulo)
    {
        Nome = nome;
        Povo = povo;
        Posto = posto;
        Circulo = circulo;

        Console.WriteLine($"O combatente {Nome} foi convocado para defender Gondor.");
    }

    public void Equipar(string arma)
    {
        Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"\nNome: {Nome}");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");
        Console.WriteLine($"Círculo: {Circulo}");

        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        CombatenteDeGondor legolas = new CombatenteDeGondor(
            "Legolas", "Elfo", "Arqueiro", 1
        );

        CombatenteDeGondor peregrin = new CombatenteDeGondor(
            "Peregrin Took", "Hobbit", "Guarda da Cidadela", 7
        );

        CombatenteDeGondor aragorn = new CombatenteDeGondor(
            "Aragorn", "Homem", "Rei", 2
        );

        legolas.Equipar("Arco dos Galadhrim");

        legolas.ApresentarUnidade();
        peregrin.ApresentarUnidade();
        aragorn.ApresentarUnidade();
        // peregrin.Posto = "Guerreiro"; essa linha apresenta erro porque Posto esta definido como private
    }
}
