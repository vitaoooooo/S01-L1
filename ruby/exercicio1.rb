class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Drink: #{@nome} | Preço: R$ #{@_preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super} | Homenagem a: #{@lenda}"
  end
end

drinks = [
  CoquetelAfterlife.new("Night City", 35),
  DrinkDeLenda.new("Johnny Silverhand", 80, "Johnny Silverhand"),
  DrinkDeLenda.new("Black Lace", 100, "Morgan Blackhand")
]

drinks.each do |drink|
  puts drink.ficha
end

drink = drinks[1]

drink.preco = 500
drink.preco = 80

puts drink.ficha

# drink.nome = "Novo Nome"  # Não é possível alterar o nome diretamente.
