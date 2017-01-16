module Fila where

data Fila t = F [t]
                deriving (Show)

getFila = F [1,2,3,4,5]

novaFila :: Fila t
novaFila = F []

inserirFila :: Fila t -> t -> Fila t
inserirFila (F lista) n = F (lista ++ [n])

removerFila :: Fila t -> Fila t
removerFila (F []) = error "fila vazia"
removerFila (F (x:xs)) = F xs

frente :: Fila t -> t
frente (F []) = error "fila vazia"
frente (F (x:xs)) = x

filaVazia :: Fila t -> Bool 
filaVazia (F []) = True
filaVazia _ = False