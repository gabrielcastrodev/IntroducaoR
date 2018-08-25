## Módulo 03
## Manipulação de Matriz

# Para atribuirmos valores a uma matriz, criando uma variável que aceite os valores de uma matriz
# Usamos a função "matrix()"
# Primeiro passamos os valores matrix(1:9)
# Depois passamos se os valores vão ser por linha ou colunas matrix(1:9, byrow = TRUE) "BYROW"
# E por fim passamos quantas linhas vão ser criadas matrix(1:9, byrow = TRUE, nrow = 3) "NROW"
matrix_teste = matrix(1:9, byrow = TRUE, nrow = 3)
print(matrix_teste)

# Atribuindo vetores à uma matriz
# Primeiro criamos o vetor
primeiro_vetor <- c(458.10, 135.96)
segundo_vetor <- c(889.65, 775.98)
terceiro_vetor <- c(984.15, 845)
# Segundo criamos a variável box que juntará os 3 vetores em uma variável
variavel_box <- c(primeiro_vetor, segundo_vetor, terceiro_vetor)
# Agora criamos a matrix com a nossa Variavel Box
matrix_vetores <- matrix(variavel_box, byrow = TRUE, nrow = 3)
print(matrix_vetores)

# Dando nomes às linhas e colunas da nossa matrix
# Criando vetores com titulos de colunas e de linha
# COLNAMES(nome_matrix) <- vetor_nomes_colunas = Para adicionar um nome à coluna
# ROWNAMES(nome_matrix) <- vetor_nome_linhas = Para adicionar um nome às linhas
colunas = c("Coluna1", "Coluna2")
linhas = c("Linha1", "Linha2", "Linha3")
colnames(matrix_vetores) <- colunas
rownames(matrix_vetores) <- linhas
print(matrix_vetores)

# FUnção rowSums() = Soma os valores de linha da matrix
soma_linhas_matrix <- rowSums(matrix_vetores)

# Como a função rowSums() cria um vetor, nós precisamos adicionar este vetor para a nossa matrix
# Utilizamos a função cbind() para mesclarmos o nosso vetor com nossa matrix
mescla_vetor_matrix = cbind(soma_linhas_matrix, matrix_vetores)
print(mescla_vetor_matrix)

# A função cbind() é utilizada apenas para a junção de vetores com matrizes
# Para merclarmos matrizes com matrizes utilizamos a função rbind()
total_valores_vetores <- c(589.15, 155.56, 189.696, 156.25, 789.358, 587.96)
matrix_vetores2 <- matrix(total_valores_vetores, byrow = TRUE, nrow = 3)
linhas_matrix2 <- c("Linha4", "Linha5", "Linha6")
rownames(matrix_vetores2) <- linhas_matrix2
# Uso do rbind()
mescla_matrizes <- rbind(matrix_vetores, matrix_vetores2)
print(mescla_matrizes)

# Assim como temos o rowSums() para somar linhas, nós temos o colSums() para somar as colunas
soma_colunas <- colSums(mescla_matrizes)
print(soma_colunas)
