local inicio = 1

function contarOcorrencias(tabela, alvo)
    local ocorrencias = 0
    for i = inicio, #tabela do
        if alvo == tabela[i] then
            ocorrencias = ocorrencias + 1
        end
    end
    return ocorrencias
end

print("Digite a quantidade de elementos (N): ")
local n = tonumber(io.read())

local tabela = {}

for i = inicio, n do
    print("Digite o elemento " .. i .. ":")
    local inserir = tonumber(io.read())
    table.insert(tabela, inserir)
end

print("Digite o numero X a ser buscado: ")
local x = tonumber(io.read())

local resultado = contarOcorrencias(tabela, x)
print("O numero " .. x .. " aparece " .. resultado .. " vez(es) na tabela")
