function gerarTabelaPotencias(inicio, fim, base)
    for i = inicio, fim do
        print ("Resultado = " .. base ^ i)
    end
end        

local m = tonumber(io.read())
local n = tonumber(io.read())
local base = tonumber(io.read())

local resultado = gerarTabelaPotencias(m, n, base)
