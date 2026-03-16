#import "@preview/diatypst:0.9.1": *
#import "@preview/titleize:0.1.1": titlecase
#set text(font: "Inter Display", lang: "pt", region: "br")

#let U = titlecase

#show: slides.with(
  title: "Introdução A Conceitos Básicos de Programação em 4 Horas",
  subtitle: "Intensivão dos básicos",
  authors: ("Diego Augusto Silva Castro"),

  ratio: 16/9,
  layout: "medium",
  title-color: blue.darken(60%),
  toc: true,
)
#set heading(numbering: none)


#let section(title) = [
  = #title

  == #title
]

#section(U[o que é uma linguagem de programação?])
Uma linguagem de programação é um conjunto de instruções que utilizamos para dar comandos aos computadores.

Nesse MiniCurso, utilizaremos a linguagem de programação Python, pois é simples de se usar, além de bastante prática.

#image("python.svg")

== #U[porque usamos linguagens de programação?]
Os computadores só entendem linguagem de máquina, algo que é muito difícil para humanos escreverem manualmente.


#figure(
```
7f454c46010101000000000000000000 02000300010000005480040834000000 00000000000000003400200001000000 00000000010000000000000000800408 00800408740000007400000005000000 00100000b00431db43b96980040831d2 b20bcd8031c040cd8048656c6c6f2077 6f726c64
```,
supplement: none,
caption: [
  _Programa que imprime "Hello, World!" em linguagem de máquina._
])

