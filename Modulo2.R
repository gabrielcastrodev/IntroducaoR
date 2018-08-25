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

# Utilizando a função "sum()" para somar os valores de um vetor
total_poker <- sum(poker_vector);
total_roleta <- sum(roulette_vector);
total_semana <- total_poker + total_roleta;
print(total_semana);

# Calculando a Diferença (de forma lógica, TRUE or FALSE) de dois vetores
# Se um é maior ou menor que o outro
diferenca_vetores <- (total_poker > total_roleta);
print(diferenca_vetores);

# Selecionando apenas um elemento de um vetor
# Selecionar apenas a parte de cima de uma matriz ou um dado isolado
# Para isso usamos Colchetes []
poker_quarta <- poker_vector[3];
print(poker_quarta);

# Selecionando vários elementos de uma vez
# Usamos o nome_variavel[c(0, 1)]
# Primeiro o nome da variável, depois colchetes [] e depois o vetor com os valores c(valores)
# variavel[c(valores)]
poker_meio_semana <- poker_vector[c(1, 5)];
print(poker_meio_semana);

# Selecionar valores naturais sem usar a função c()
poker_sequencia <- poker_vector[1:4];
print(poker_sequencia);

# Podemos selecionar um elemento de um vetor pelo nome deste elemento
# Para isso utilizamos variável["Nome do Elemento"] ou para multiplos elementos variavel[c("Nome1", "Nome2)]
poker_selecao_nomes <- poker_vector[c("Segunda-Feira", "Terça-Feira")];
print(poker_selecao_nomes);

# Para calcularmos a média de valores de um vetor, ou grupo de valores de um vetor, como a seleção acima usamos a função "mean()"
mean(poker_selecao_nomes);

# Operadores lógicos com todos os valores do vetor
valores_positivos_poker <- poker_vector > 0; # Saber quais os valores são positivos (Me retorna TRUE or FALSE para cada elemento)
print(teste_operador);

# Selecionando apenas os valores atribuidos à uma varíavel de outros valores puxados de um vetor
dias_ganhadores <- poker_vector[valores_positivos_poker];
print(dias_ganhadores);