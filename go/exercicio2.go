package main
import "fmt"

func main() {
	var venda1 int
	var venda2 int
	var venda3 int

	fmt.Println("Digite as vendas do 1o trimestre: ")
	fmt.Scanln(&venda1)

	fmt.Println("Digite as vendas do 2o trimestre: ")
	fmt.Scanln(&venda2)

	fmt.Println("Digite as vendas do 3o trimestre: ")
	fmt.Scanln(&venda3)

	total := venda1 + venda2 + venda3

	if total < 100 {
		fmt.Println("Meta minima anual nao atingida!")
	} else {
		fmt.Println("Total de vendas:", total, "unidades")

		switch {
		case total >= 250:
			fmt.Println("Classificacao: Categoria Top Seller")

		case total >= 180:
			fmt.Println("Classificacao: Categoria Senior")

		default:
			fmt.Println("Classificacao: Categoria Pleno")
		}
	}
}
