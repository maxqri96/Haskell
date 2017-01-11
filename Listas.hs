-- Função que mostra o tamanho da lista 

size_list [] = 0
size_list (x:xs) = 1 + size_list xs

-- Função que verifica se 2 listas são iguais 

comp_listas :: [Int] -> [Int] -> Bool -- Passa 2 listas inteiras e retorna resultado bool
comp_listas [] [] = True
comp_listas [] _ = False
comp_listas _ [] = False
comp_listas (a:as) (b:bs) | (a == b) = comp_listas as bs
						  | otherwise = False
