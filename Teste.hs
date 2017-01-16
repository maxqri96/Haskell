module Teste where

import Fila

show_fila :: Fila t -> [t]
show_fila fila | ((filaVazia fila) == True) = []
               | otherwise = (frente fila):(show_fila(removerFila fila))

top :: Fila t -> t
top fila = frente fila
