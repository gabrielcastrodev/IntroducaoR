# Módulo 04
# Utilização de Fatores

# Fatores são variáveis categórias, que usamos para categorizar algo
# Utilizamos a função factor() para criar um nível de fator (Levels)
# Antes precisamos atribuir os valores, por meio de um vetor com c()
sexo_vetor <- c("Masculino", "Feminino", "Feminino", "Masculino", "Masculino")
fator_sexo_vetor <- factor(sexo_vetor)
print(fator_sexo_vetor)

# Existem dois tipos de categorias, as nominais e as orinais (categorical, ordinal)
# As nominais são aquelas em que é impossível dizer o nível ou hierarquia, como categoria de nome de animais
# As ordinais são aquelas que designamos para um certo nível de hierarquia, como Alto, Médio, Baixo
# Para criarmos um fator com categoria nominal, só precisamos fazer como a cima:
# NOMINAL:
animal_vetor <- c("Elefante", "Baleia", "Urso", "Leão")
fator_animal <- factor(animal_vetor)
fator_animal

# ORDINAL:
# Levels sempre começa com o menor valor na hierarquia
temperatura_vetor <- c("High", "Medium", "Low", "Low", "High")
factor_temperatura <- factor(temperatura_vetor, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperatura

# Alterando os nomes das categorias
# Utilizamos a função levels()
# levels(factor) < c(vetor com os novos nomes)
levels(fator_animal) <- c("Whale", "Elephant", "Lion", "Bear")
fator_animal

# Para verificarmos os valores e a quantidade de valores dentro do nosso fator, utilizamos a função summary()
summary(fator_animal)

# Podemos usar funções lógicas para comparar fatores ordinais
temp1 <- factor_temperatura[1]
temp2 <- factor_temperatura[3]
temp1 > temp2