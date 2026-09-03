use std::io;

fn validar_placa(placa: &str) -> bool {

    let mut maiusculas = 0;
    let mut numeros = 0;

    for caracter in placa.chars() {

        if caracter.is_ascii_uppercase() {
            maiusculas += 1;
        }

        if caracter.is_numeric() {
            numeros += 1;
        }
    }
    
    if placa.chars().count() >= 7 && numeros >= 2 && maiusculas >= 4 {
        return true;
    } else {
        return false;
    }
}

fn main() {

    loop {

        let mut placa = String::new();

        println!("Digite a placa do veiculo:");

        io::stdin()
            .read_line(&mut placa)
            .expect("Erro ao ler");

        let placa = placa.trim();

        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa invalida. Tente novamente!");
        }
    } 
}
