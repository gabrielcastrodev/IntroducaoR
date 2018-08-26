# Módulo 05
# DataFrames 

# DataFrames, diferente de vetores e de matrizes que só aceitam valores do mesmo tipo, já possui uma sintaxe diferente
# DataFrames, ou conjunto de dados, possuem colunas como grupo de dados e linhas como observações sobre os dados
# É como se fosse uma tabela de um banco de dados

# Criação de um DataFrame
# Primeiro criamos vetores com os dados que estarão presentes em nosso dataFrame
# O nome dos nossos vetores será nossa variável (coluna)
# E nossos valores nossos valores de linha
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
planet_df <- data.frame(name, type, diameter, rotation, rings)
planet_df

# função head() imprime as primeiras informações do DataFrame
head(planet_df)
# E a função tail() imprime as ultimas linhas do DataFrame
tail(planet_df)

# Função str() para imprimir um resumo do DataFrame:
# - Numero de variables (colunas)
# - Numero de obs (Linhas)
# - Tipo de dado de cada variável (datatype)
# - Nome das variáveis ($ variable)
str(planet_df)

# Podemos usar a seleção de valores por meio de colchetes [] como nas outras linguagens
planet_df[2:3, ]
# Podemos usar o nome da variável ou da linhas também
planet_df[2:3, "type"]

# Para selecionar todos os valores de uma determinada variável, só precisamos usar o "$"
all_rings <- planet_df$rings
all_rings
# Trocando os valores lógicos por valores de outra coluna
# Utilizamos a variável criada com os valores de "rings" para selecionar em nosso dataFrame os nomes dos planelas com rings
planet_df[all_rings, "name"]
planet_df[all_rings, ]

# Obtendo a mesma reposta a cima, só que com a função subset(), que seleciona os valores do DataFrame apenas para aquela variável
# Podemos passar condições dentro do subset()
# Queremos só os planetas com o diametro menor do que 1 (diameter < 1)
# Funciona como se fosse uma função where
subset(planet_df, subset = diameter < 1)

# Função order() para para retornarmos as ordens dos valores (igual a order by)
# Retorna a posição dos menores valores até os maiores
# Pode ser usada com a seleção de valores "[]"
a <- c(335, 856, 985)
order(a)
a[order(a)]

# Utilizando o order() de um módo avançado
# Retornar a ordem dos menores planetas aos mairoes
tamanho <- order(planet_df$diameter)
planet_df[tamanho, ]