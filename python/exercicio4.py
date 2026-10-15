from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome, modelo):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo)

    def executar_invasao(self):
        print(
            f"Netrunner {self.nome} utiliza o cyberdeck "
            f"{self.cyberdeck.modelo} para quebrar o gelo (ICE) de um servidor."
        )

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"Drone {self.codigo} está interceptando o sinal da rede.")

class CelulaHacker:
    def __init__(self, nome, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"Célula hacker {self.nome} iniciou o ataque!")

        for membro in self.membros:
            membro.executar_invasao()

if __name__ == "__main__":
    netrunner = OperadorNetrunner("V", "Militech Paraline")
    drone = DroneDeVigilancia("D-01")

    celula = CelulaHacker("Night City", [netrunner, drone])

    celula.iniciar_ataque()

    # unidade = IUnidadeDeRede() Não é possível instanciar uma classe abstrata.
