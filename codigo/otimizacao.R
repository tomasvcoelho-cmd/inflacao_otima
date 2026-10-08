library(ggplot2)
library(scales)

# Definição dos parâmetros ------------------------------------------------


pi_a <- 0.030; beta <- 1/(1+0.06); kappa <- 1.5
b0   <- 0.80;  pi_star_target <- 0.040
theta <- kappa*(pi_star_target - pi_a) * (1 + pi_star_target)^2 / b0


# Definição das funções do modelo -----------------------------------------


G  <- function(pi,b) theta*b*(pi/(1+pi))      #ganho fiscal
C  <- function(pi)   0.5*kappa*(pi - pi_a)^2  #custo
W  <- function(pi,b) G(pi,b) - C(pi)          #W = C - G


# Otimização --------------------------------------------------------------


solve_pi <- function(b) optimize(function(p) W(p,b), c(0,0.15), maximum=TRUE)$maximum

b_grid <- seq(0.30, 1.20, by=0.01)   # range da dívida
pi_hat <- sapply(b_grid, solve_pi)   # solução para cada nível da dívida



# Gráfico -----------------------------------------------------------------

df <- data.frame(b=b_grid, pi=pi_hat)

ggplot(df, aes(b, pi)) +
  geom_line(size = 1.3, color="red") +
  geom_point(size = 1.5, color="red") +
  labs(
    x = "Dívida/PIB",
    y = "Inflação ótima (%)",
    caption = "Fonte: elaboração própria"
  ) +
  theme_minimal(base_size = 14, base_family = "Arial") +
  theme(
    legend.position   = "none",            
    plot.title        = element_blank(),   
    plot.subtitle     = element_blank(),   
    plot.caption      = element_blank()    
  ) +
  scale_y_continuous(
    labels = percent_format(accuracy = 0.1)
  ) +
  scale_x_continuous(
    labels = percent_format(accuracy = 1)
  )+
  theme(
    plot.caption = element_text(hjust = 0),
    plot.caption.position = "plot"
  )