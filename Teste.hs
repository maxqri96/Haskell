type Nome = String
type Idade = Int
type Linguagem = String
type Pessoa = (Nome, Idade, Linguagem)

pessoa :: Pessoa
pessoa = ("Max", 20, "Haskell")

my_fst :: Pessoa -> Nome
my_fst (x, _, _) = x