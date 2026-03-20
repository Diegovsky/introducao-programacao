#import "diatypst.typ": *
#import "@preview/titleize:0.1.1": titlecase
#set text(font: "Inter Display", lang: "pt", region: "br")

#let U = titlecase
#show table: it=> align(center, it)
#let sym(it) = align(center, it)

#show: slides.with(
  title: "Introdução A Conceitos Básicos de Programação em 4 Horas",
  subtitle: "Intensivão dos básicos",
  authors: ("Diego Augusto Silva Castro"),

  ratio: 16/9,
  layout: "medium",
  title-color: blue.darken(60%),
  toc: true,
)


#let section(title) = [
  = #title
  == #title
]

#section([o que é uma linguagem de programação?])
Uma linguagem de programação é um conjunto de instruções que utilizamos para dar comandos aos computadores.

Nesse MiniCurso, utilizaremos a linguagem de programação Python, pois é simples de se usar, além de bastante prática.


#v(1fr)
#align(center,image("python.svg", height: 80pt))
#v(1fr)

== porque usamos linguagens de programação?
Os computadores só entendem linguagem de máquina, algo que é muito difícil para humanos escreverem manualmente.

#pad(y: 10pt)[
#figure(
```
7f454c46010101000000000000000000 02000300010000005480040834000000 00000000000000003400200001000000 00000000010000000000000000800408 00800408740000007400000005000000 00100000b00431db43b96980040831d2 b20bcd8031c040cd8048656c6c6f2077 6f726c64
```,
supplement: none,
caption: [
  _Programa que imprime "Hello, World!" em linguagem de máquina._
])
]

Por isso, utilizamos linguagens de programação, que são convertidas em linguagem de máquina para que o computador possa executar o código.

== O que são tipos?
No fim das contas, *programar se resume a manipular valores*. Por isso, é importante saber o que é possível fazer com esses valores.

De forma análoga à matemática, valores no computador podem pertencer a vários conjuntos, e nós chamamos esses conjuntos de *tipos*.

Os tipos comuns que vamos tratar nesse curso são:
#table(
  align: left,
  columns: 3,
  table.header([Nome], [Em Python], [Descrição]),
  [Texto], sym[`string`], [Representa nomes, letras, símbolos, frases, roteiro de bee movie, etc.],
  [Inteiro], sym[`int`], [Números inteiros como `10`, `-9`, `0`, `6`, `7`, etc.],
  [Real], sym[`float`],[Números com casas decimais como `3.14`, `1.7777...`, `-0`, etc.],
  [Lógico], sym[`bool`], [Valores possíveis: `True` (verdadeiro) e `False` (falso)],
  [Lista], sym[`list`], [Representa um conjunto ordenado de coisas, como uma lista de compras]
)

= Como se manipula esses valores?
== Operações aritm
Números como `float` e `int` podem ser manipulados usando as seguintes operações aritméticas:

#table(
  align: left,
  columns: 4,
  table.header([Operação], [Símbolo], [Exemplo], [Resultado do Exemplo]),
  [Soma], sym[`+`], [`2 + 3`], [`5`],
  [Subtração], sym[`-`], [`5 - 2`], [`3`],
  [Divisão], sym[`/`], [`7 / 2`], [`3.5`],
  [Divisão Inteira], sym[`//`], [`7 // 2`], [`3`],
  [Multiplicação], sym[`*`], [`4 * 3`], [`12`],
  [Potênciação], sym[`**`], [`2 ** 3`], [`8`],
)

#pagebreak()

Strings e 
