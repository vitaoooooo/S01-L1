module Depoente
  def depor
    raise NotImplementedError
  end
end

module Detivel
  def ser_detido
    puts "#{nome} foi levado pela Scotland Yard."
  end
end

class Envolvido
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class TestemunhaOcular < Envolvido
  include Depoente

  def depor
    puts "#{nome}: Vi uma pessoa saindo do local do crime."
  end
end

class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def depor
    puts "#{nome}: Eu estava em casa no horário do crime."
  end
end

class Investigacao
  def initialize(caso)
    @caso = caso
    @envolvidos = []
  end

  def registrar(envolvido)
    @envolvidos << envolvido
  end

  def ouvir_todos
    puts "\n--- Investigação: #{@caso} ---"

    @envolvidos.each do |envolvido|
      envolvido.depor
    end
  end

  def acionar_scotland_yard
    detiveis = @envolvidos.select do |envolvido|
      envolvido.respond_to?(:ser_detido)
    end

    detiveis.each do |envolvido|
      envolvido.ser_detido
    end
  end
end

testemunha = TestemunhaOcular.new("John Watson")
suspeito1 = SuspeitoDoCrime.new("James Moriarty")
suspeito2 = SuspeitoDoCrime.new("Irene Adler")

investigacao = Investigacao.new("O roubo do colar")

investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)

investigacao.ouvir_todos
investigacao.acionar_scotland_yard
