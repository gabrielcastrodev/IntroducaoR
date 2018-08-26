## Módulo 06
## Listas

# Nós podemos adicionar qualquer tipo de dados á uma lita, sendo eles vetores, matrizes, dataFrames ou outras listas
# Usamos a função list() para criar uma lista com base em outros dados
# Criando valores para serem adicionados à uma lista
my_vector <- c(1:10)
my_matrix <- matrix(1:9, ncol = 3)
my_dataFrame <- mtcars[1:10, ]

# Criando a lista
# Armazenamos todos os tipos de dados criados a cima dentro da nossa lista
my_list <- list(my_vector, my_matrix, my_dataFrame)
my_list

# Mudando o nome das nossas listas, como fazemos com as outras funções
# Usamos a função names()
names(my_list) <- c("vec", "mat", "df")
my_list

# Para selecionarmos elementos dentro de uma lista, usamos os colchetes como nos outros tipos de dados
my_list[1] ## vetor
my_list[2] ## matrix
my_list[3] ## dataFrame

my_list["vec"] ## vetor
my_list$mat ## matrix

my_list$mat[2] ## segundo elemento da matrix que está dentro da lista