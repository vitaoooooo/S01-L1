function calcularMedia(a, b)
    return (a+b)/2
end

function encontrarMaior(a, b)
    if a > b then
        return a
    else
        return b
    end        
end

function calcularDiferencaAbsoluta(a, b)
    return math.abs(a-b)
end

function analisarNumeros(n1, n2, operacao)
    if operacao == "maior" then 
        resultado = encontrarMaior(n1, n2)
    elseif operacao == "media" then
        resultado = calcularMedia(n1, n2)
    elseif operacao == "diferenca" then
        resultado = calcularDiferencaAbsoluta(n1, n2)
    else
        print("Operacao invalida!")            
    end
    return resultado
end

print("Digite o primeiro numero:" )
local n1 = tonumber(io.read())

print("Digite o segundo numero:" )
local n2 = tonumber(io.read())

print('Digite a operacao ("media", "maior" ou "diferenca"):')
local operacao = io.read()

local resultado = analisarNumeros(n1, n2, operacao)
print("Resultado: " .. resultado)
