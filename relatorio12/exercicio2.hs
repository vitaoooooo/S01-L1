pesoMaximo :: Double
pesoMaximo = 5.0
-- pesoMaximo = 8.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }

descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " - " ++ show (peso e) ++ " kg - frete de R$ " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\e -> peso e <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
  let encomendas =
        [ Encomenda { destinatario = "Senhora do bolo de peixe", peso = 3.0, frete = 15.0 }
        , Encomenda { destinatario = "Padaria da Osono", peso = 7.5, frete = 25.0 }
        , Encomenda { destinatario = "Tombo", peso = 1.5, frete = 10.0 }
        , Encomenda { destinatario = "Ursula", peso = 9.0, frete = 30.0 }
        ]
  let quecabem = cabemNaVassoura encomendas

  putStrLn "--- Todas as encomendas ---"
  mapM_ putStrLn (map descrever encomendas)
  putStrLn "--- Cabem na vassoura ---"
  mapM_ putStrLn (map descrever quecabem)
  putStrLn ("Total de fretes: R$ " ++ show (totalDeFretes quecabem))
