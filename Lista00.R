#Questão 1
A <- matrix(c(12,-1,-5,0,-1,7,2,-1,-5,2,10,1,0,-1,1,3), nrow=4)
b <- c(1,2,3,4)

result <- solve(A,b)
result

#Questão 2
dados <- list(sub_um<- A[1:1,1:1],sub_dois<-A[1:2,1:2],sub_tres<-A[-4, -4])
determinante_funcao <- function(dados){
  for(d in dados[2:3]){
    a<- det(d)
    if(a > 0){
      resultado <- "TRUE"
      print(resultado)
    }
    else{
      resultado <- "FALSE"
      print(resultado)
    }
  }
}
determinante_funcao(dados)

#Questão 3
library(ggplot2)
library(tibble)
tabela <- tibble(
  cos = c(cos(-2*pi), cos((-3*pi)/2), cos(-pi), cos(-pi/2), cos(0) , cos(pi/2), cos(pi), cos((3*pi))/2, cos(2*pi)),
  sen = c(sin(-2*pi), sin((-3*pi)/2), sin(-pi), sin(-pi/2), sin(0) , sin(pi/2), sin(pi), sin((3*pi))/2, sin(2*pi))
)
# Criar o gráfico das funções cosseno e seno
grafico <- ggplot(tabela) +
  geom_line(aes(x = 1:length(cos), y = cos, color = "Cosseno")) +
  geom_point(aes(x = 1:length(cos), y = cos, color = "Cosseno")) +
  geom_line(aes(x = 1:length(sen), y = sen, color = "Seno")) +
  geom_point(aes(x = 1:length(sen), y = sen, color = "Seno")) +
  scale_color_manual(values = c("Cosseno" = "blue", "Seno" = "red")) +
  labs(x = "Ângulo", y = "Valor", color = "Função") +
  theme_minimal()

# Exibir o gráfico
print(grafico)