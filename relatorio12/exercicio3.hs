data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno está vazio."
esbocoMaisRecente (e:_) = "Mais recente: " ++ titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos []        = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando []        = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno =
        [ Esboco { titulo = "Criatura da névoa", tecnica = "nanquim", horas = 4 }
        , Esboco { titulo = "Ruínas do templo", tecnica = "grafite", horas = 6 }
        , Esboco { titulo = "Floresta morta", tecnica = "carvão", horas = 3 }
        ]

  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Esboços: " ++ show (contarEsbocos caderno))
  putStrLn ("Horas desenhando: " ++ show (horasDesenhando caderno))
  putStrLn (esbocoMaisRecente [])

  let cadernoNovo = Esboco { titulo = "Castelo em chamas", tecnica = "carvão", horas = 5 } : caderno

  putStrLn "--- Caderno novo ---"
  putStrLn (esbocoMaisRecente cadernoNovo)
  putStrLn ("Esboços: " ++ show (contarEsbocos cadernoNovo))
  putStrLn "--- Caderno anterior ---"
  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Esboços: " ++ show (contarEsbocos caderno))

  -- putStrLn (titulo (head []))
