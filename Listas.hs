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

-- Função que recebe uma lista e retorna o inverso da lista
{-inv_aux :: [t] -> [t] -> [t]
inv_aux [] l_inv = l_inv
inv_aux (x:xs) l_inv = inv_aux xs l_inv++[x]

inv_lista :: [t] -> [t]
inv_lista [] = []
inv_lista l = inv_aux l []
-}

inv_lista :: [t] -> [t]
inv_lista [] = []
inv_lista (x:xs) = inv_lista xs ++ [x]

-- Função que verifica se todos da lista são pares

todos_pares :: [Int] -> Bool
todos_pares [] = True
todos_pares (x:xs) | (mod x 2 /= 0) = False
                   | otherwise = todos_pares xs

-- Função ordena lista

lista :: [Int]
lista = [5,2,10,1,9]

get_menor :: [Int] -> Int
get_menor [x] = x
get_menor (x:xs) | (x < get_menor xs) = x
                 | otherwise = get_menor xs


remove_menor :: [Int] -> [Int]
remove_menor [] = []
remove_menor (x:xs) | (x == (get_menor (x:xs))) = xs
                    | otherwise = (x:remove_menor xs)


aux_ordena :: [Int] -> [Int] -> [Int]
aux_ordena lista_ordenada [] = lista_ordenada
aux_ordena lista_ordenada (x:xs) = aux_ordena (lista_ordenada++[get_menor (x:xs)]) (remove_menor (x:xs))


ordena :: [Int] -> [Int]
ordena [] = []
ordena lista = aux_ordena [] lista
