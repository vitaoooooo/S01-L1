data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
  if comLeite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let etiopia = Cafe "Etiópia" 12.0 3
  let colombia = Cafe "Colômbia" 10.0 6
  let sumatra = Cafe "Sumatra" 14.0 9

  putStrLn (descrever etiopia ++ " - " ++ forca etiopia)
  putStrLn (descrever colombia ++ " - " ++ forca colombia)
  putStrLn (descrever sumatra ++ " - " ++ forca sumatra)

  print (precoDoPedido True colombia)
  print (precoDoPedido False colombia)
