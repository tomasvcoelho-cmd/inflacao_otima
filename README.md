# Inflação ótima: teoria e aplicações para o caso brasileiro

Trabalho de Conclusão de Curso apresentado ao Instituto de Economia da Universidade Federal do Rio de Janeiro (UFRJ), em dezembro de 2025, para obtenção do título de Bacharel em Ciências Econômicas.

**Autor:** Tomás Valença Sarmento do Nascimento Coelho  
**Orientador:** Professor Antonio Luis Licha

## Sobre o projeto

A monografia discute o problema da inflação ótima a partir de diferentes correntes teóricas. O trabalho realiza uma revisão da literatura clássica, com destaque para a Regra de Friedman, e compara essa abordagem com outras perspectivas, principalmente a teoria inflacionária do setor público.

Do ponto de vista empírico, o trabalho revisa a literatura aplicada ao contexto brasileiro, com destaque para a conjuntura fiscal, e realiza estimativas de inflação ótima de acordo com o nível de dívida pública.

## Aplicação ao caso brasileiro

A parte quantitativa desenvolve uma versão simplificada, inspirada no modelo de Valk (2020), para estimar a inflação ótima no Brasil em 2025.

A calibração utiliza:

- meta de inflação de 3,0% a.a.;
- fator de desconto de 0,94;
- dívida pública equivalente a 80% do PIB no ponto de calibração;
- peso do custo do desvio igual a 1,50;
- inflação ótima de 4,0% no ponto de calibração;
- peso fiscal da inflação igual a 0,01014.

A simulação foi realizada em **R** para uma razão Dívida/PIB entre 30% e 120%. No exercício, a inflação ótima aumenta com o nível de endividamento, passando de 3,69% quando a Dívida/PIB é de 30% para 4,25% quando a Dívida/PIB é de 120%.

## Estrutura do repositório

```text
.
├── README.md
├── codigo/
│   ├── otimizacao.R
│   └── inflacao.Rproj
├── trabalho/
│   └── tcc-inflacao-otima.pdf
└── .gitignore
```

- **codigo/otimizacao.R** — código em R utilizado na simulação apresentada na monografia.
- **codigo/inflacao.Rproj** — arquivo de projeto do RStudio.
- **trabalho/tcc-inflacao-otima.pdf** — versão final da monografia.
- **.gitignore** — configurações de arquivos ignorados pelo Git.

## Monografia completa

A versão final da monografia está disponível em [`trabalho/tcc-inflacao-otima.pdf`](trabalho/tcc-inflacao-otima.pdf).

## Observação

Este repositório tem finalidade acadêmica e de portfólio. O código disponibilizado corresponde ao utilizado no trabalho original e não foi alterado nesta reorganização.
