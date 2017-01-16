type Nome = String
type Linguagem = String
type Universidade = String


data Pessoa = Programador Nome Linguagem | Aluno Nome Universidade
                deriving(Show)

programador = Programador "Max" "Haskell"
aluno = Aluno "Max" "IFGoiano"

is_Programador :: Pessoa -> Bool
is_Programador (Programador _ _) = True
is_Programador _ = False


is_aluno :: Pessoa -> Bool
is_aluno (Aluno _ _) = True
is_aluno _ = False