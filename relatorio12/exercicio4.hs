data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever a = cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  let semRosto = Atendimento { cliente = "Sem Rosto", servico = "Banho de ervas", valor = 50.0, etapa = NaFila }
  let deusRio = Atendimento { cliente = "Deus do Rio", servico = "Banho especial", valor = 120.0, etapa = NoBanho }
  let rabanete = Atendimento { cliente = "Deus Rabanete", servico = "Banho quente", valor = 30.0, etapa = NaFila }

  let atendimentos = [semRosto, deusRio, rabanete]
  let atualizados = [semRosto, concluir deusRio, concluir rabanete]

  putStrLn "--- Lista original ---"
  mapM_ putStrLn (map descrever atendimentos)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atendimentos))

  putStrLn "--- Lista atualizada ---"
  mapM_ putStrLn (map descrever atualizados)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atualizados))
