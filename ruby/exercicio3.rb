class PhoneWave
  def enviar_dmail(mensagem)
    puts "Mensagem: #{mensagem}"
    puts "D-mail enviado para o passado!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Membro admitido: #{membro.numero} - #{membro.nome}"
  end

  def experimento(mensagem)
    puts "\n--- Membros presentes no experimento ---"

    @membros.each do |membro|
      puts "#{membro.numero} - #{membro.nome}"
    end

    @phonewave.enviar_dmail(mensagem)
  end
end

membro1 = MembroDoLab.new(1, "Okabe Rintaro")
membro2 = MembroDoLab.new(2, "Makise Kurisu")

laboratorio = LaboratorioDeGadgets.new

laboratorio.admitir(membro1)
laboratorio.admitir(membro2)

# Composição: o LaboratorioDeGadgets cria seu PhoneWave internamente.
# Agregação: os MembroDoLab existem antes e são adicionados ao laboratório.

laboratorio.experimento("O teste do PhoneWave foi um sucesso!")
