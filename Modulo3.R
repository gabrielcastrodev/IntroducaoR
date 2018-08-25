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