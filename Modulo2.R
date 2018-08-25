# Curso Introdução à R DataCamp Módulo 2
# Vetores

# Para adicionar valores em vetor em uma variável se usa o "c()"
# Vetor numerico
vector_numeric <- c(1, 2, 3);

# Vetor de caractere
vector_char <- c("Matheus", "Gabriel", "Marcos");

# Vetor lógico
vector_logic <- c(TRUE, FALSE, TRUE);

poker_vector <- c(140, -50, 20, -120, 240);
roulette_vector <- c(-24, -50, 100, -350, 10);

# Atribuindo nomes aos valores usando a função "names()"
names(poker_vector) <- c("Segunda-Feira", "Terça-Feira", "Quarta-feira", "Quinta-feira", "Sexta-feira");
print(poker_vector);

names(roulette_vector) <- c("Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira");
print(roulette_vector);

# Criando uma variável que contenha os dias da semana para não ter que ficar digitando
# Usar a função "names()"
days_vector <- c("Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira");
names(poker_vector) <- days_vector;
names(roulette_vector) <- days_vector;
print(poker_vector);
print(roulette_vector)

# Soma com vetores
A_vector <- c(1, 2, 3);
B_vector <- c(4, 5, 6);
# Soma o vetor A e o vetor B
total_vector <- c(A_vector) + B_vector;
print(total_vector);

# Calculando os vetores das variáveis atribuidas logo à cima
# Criando uma variável que atribui o lucro do dia (soma do poker + roleta)
total_daily <- c(poker_vector + roulette_vector);
print(total_daily);

#Utilizando a função "sum()" para somar os valores de um vetor
total_poker <- sum(poker_vector);
total_roleta <- sum(roulette_vector);
total_semana <- total_poker + total_roleta;
print(total_semana);