using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; private set; }

    public Pokemon(string especie, int nivel)
    {
        Especie = especie;
        Nivel = nivel;
    }

    public virtual void EntrarEmCampo()
    {
        Console.WriteLine($"\nPokémon: {Especie}");
        Console.WriteLine($"Nível: {Nivel}");
        Console.WriteLine("Ataque: Investida!");
    }
}

public class TipoPlanta : Pokemon
{
    public string GolpeEspecial { get; set; }

    public TipoPlanta(string especie, int nivel, string golpeEspecial)
        : base(especie, nivel)
    {
        GolpeEspecial = golpeEspecial;
    }

    public override void EntrarEmCampo()
    {
        Console.WriteLine($"\nPokémon: {Especie}");
        Console.WriteLine($"Nível: {Nivel}");
        Console.WriteLine($"Golpe especial: {GolpeEspecial}!");
    }
}

public class TipoEletrico : Pokemon
{
    public int Voltagem { get; private set; }

    public TipoEletrico(string especie, int nivel, int voltagem)
        : base(especie, nivel)
    {
        Voltagem = voltagem;
    }

    public override void EntrarEmCampo()
    {
        base.EntrarEmCampo();
        Console.WriteLine($"Descarga elétrica de {Voltagem} volts!");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        List<Pokemon> pokemons = new List<Pokemon>();

        pokemons.Add(new TipoPlanta("Sceptile", 45, "Lâmina de Folha"));
        pokemons.Add(new TipoEletrico("Jolteon", 40, 1000));
        pokemons.Add(new Pokemon("Eevee", 15));

        Console.WriteLine($"Quantidade de Pokémon em campo: {pokemons.Count}");

        foreach (var pokemon in pokemons)
        {
            pokemon.EntrarEmCampo();
        }
      
    }
}
