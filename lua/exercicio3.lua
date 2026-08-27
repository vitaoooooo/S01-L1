local inicio = 1

function filtrarMaiores(tabela, limite)
    print("--- Elementos maiores que " .. limite .. " ---")
    for i = inicio, #tabela do
        if tabela[i] > limite then
            print(tabela[i])
        end
    end
end            

print("Digite a quantidade de elementos (N): ")
local n = tonumber(io.read())

local tabela = {}

for i = inicio, n do
    print("Digite o elemento " .. i .. ":")
    local inserir = tonumber(io.read())
    table.insert(tabela, inserir)
end

print("Digite o valor limite (K): ")
local k = tonumber(io.read())

local resultado = filtrarMaiores(tabela, k)


