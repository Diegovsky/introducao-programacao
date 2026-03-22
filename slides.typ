#import "diatypst.typ": *
#import "@preview/titleize:0.1.1": titlecase
#set text(font: "Inter Display", lang: "pt", region: "br")

#let U = titlecase
#show table: it=> align(center, it)
#let sym(it) = align(center, it)
#show "minicurso": "MiniCurso"
#set image(height: 1fr, fit: "contain")
#show image: it=> align(center, it)
#let bicolumn(a, b) =  grid(columns : (1fr, 1fr), a, b)

#show: slides.with(
  title: "Introdução A Conceitos Básicos de Programação em 4 Horas",
  subtitle: "Intensivão dos básicos",
  authors: ("Diego Augusto Silva Castro"),

  count: "number",
  ratio: 16/9,
  layout: "medium",
  title-color: blue.darken(60%),
  toc: true,
)

#show heading.where(level: 1): it => {
  it
  heading(level: 2, outlined: false, it.body)
  
}

== #U[Acesso ao Slide]

https://intro-python.diegovsky.dev

#image("qrcode.svg")



= #U[O Que É Uma Linguagem De Programação?]
Uma linguagem de programação é um conjunto de instruções que utilizamos para dar comandos aos computadores.

Nesse MiniCurso, utilizaremos a linguagem de programação Python, pois é simples de se usar, além de bastante prática.


#v(1fr)
#align(center,image("python.svg", height: 80pt))
#v(1fr)

== #U[porque usamos linguagens de programação?]
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

Por isso, utilizamos linguagens de programação. Elas são convertidas em linguagem de máquina para que o computador possa executar o código, nos permitindo expressar os programas de forma muito mais intuitiva.

== #U[O que são tipos?]
No fim das contas, *programar se resume a manipular valores*. Por isso, é importante saber o que é possível fazer com esses valores.

De forma análoga à matemática, valores no computador podem pertencer a vários conjuntos, e nós chamamos esses conjuntos de *tipos*.

Os tipos comuns que vamos tratar nesse curso são:
#table(
  align: left,
  columns: 3,
  table.header([Nome], [Em Python], [Descrição]),
  [Texto/String], sym[`str`], [Representa nomes, letras, símbolos, frases, roteiro de bee movie, etc.],
  [Inteiro], sym[`int`], [Números inteiros como `10`, `-9`, `0`, `6`, `7`, etc.],
  [Real], sym[`float`],[Números com casas decimais como `3.14`, `1.7777...`, `-0`, etc.],
  [Lógico], sym[`bool`], [Valores possíveis: `True` (verdadeiro) e `False` (falso)],
)

= #U[Como se manipula esses valores?]
== #U[Números]
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

== #U[Booleanos]
Valores booleanos podem ser criados escrevendo `True` ou `False`\*. Quando uma comparação é realizada, o resultado é um valor booleano também:

#table(
  align: left,
  columns: 4,
  table.header([Operação], [Símbolo], [Exemplo], [Resultado]),
  [Igual a], sym[`==`], [`1 == 1`], [`True`],
  [Diferente de], sym[`!=`], [`'a' != 'b'`], [`True`],
  [Menor que], sym[`<`], [`2 < 4`], [`True`],
  [Maior que], sym[`>`], [`2 > 4`], [`False`],
  [Negação], sym[`not`], [`not True`], [`False`],
  [Menor ou igual], sym[`<=`], [`3 <= 3`], [`True`],
  [Maior ou igual], sym[`>=`], [`4 >= 3`], [`True`],)


#v(1fr)
\* Atenção, precisa ser maiúsculo!

= #U[Mão na massa!]
Agora, abra o Python interativo na sua máquina. Basta abrir o terminal e digitar `Python3`.

Aqui, você pode digitar código em Python, e após dár enter, o resultado será mostrado:
#image("screenshots/repl.png", width: 100%)

= #U[Configurando o VSCode]
O VSCode é o ambiente de desenvolvimento integrado (IDE) que utilizaremos para desenvolver Python nesse minicurso. Utilizamos ele por ser grátis, de qualidade e utilizado por profissionais no dia-a-dia.


#image("screenshots/vscode0.png")

#pagebreak()
Abra o VSCode e vá em "Abrir Pasta..." ("Open Folder"... em inglês).

#image("screenshots/vscode1.png")

Então, crie uma pasta para a aula. Coloque o nome que quiser. Eu chamei a minha de "intropy".

#pagebreak()
Agora, vamos criar o primeiro arquivo. No canto esquerdo superior, você vai encontrar um ícone com um "+" perto do nome da sua pasta, escrito "Novo arquivo..." ("New file..." em inglês).

#image("screenshots/vscode2.png")

#pagebreak()
Eu chamei o meu de "script1.py". Pode usar o nome que quiser, contanto que acabe em ".py". O VSCode deve te falar para instalar a extensão de Python, se sim, pode ir no botão azul em baixo na direita escrito "Instalar" ("Install" em inglês).

#image("screenshots/vscode3.png")

#pagebreak()
Depois que ele acabar de instalar, é só clicar nos xizinhos no topo para fechar. Deixe apenas nosso script aberto.
#image("screenshots/vscode4.png")

#pagebreak()
Se por acaso estiver perdido, procure o ícone de arquivo no canto superior esquerdo.

#image("screenshots/vscode5.svg")

#pagebreak()
Por último, feche a aba de IA. Não vamos utilizar isso nesse minicurso, e essa funcionalidade escreve código pra você, essencialmente te tirando o aprendizado.

#image("screenshots/vscode6.svg")

== #U[Como rodar um script]
Primeiro, vamos garantir que o terminal integrado está aberto:

#bicolumn(
  image("screenshots/vscode7.png"),
  image("screenshots/vscode8.png")
)

#pagebreak()
#bicolumn([
E então, basta digitar o seguinte:
```bash
python <nome do arquivo>
```

Onde `<nome do arquivo>` deve ser substituído pelo nome do seu arquivo.
], image("screenshots/vscode9.png"))



= #U[Nosso primeiro script]
== Variáveis
Até esse ponto, utilizamos valores literais no código, mas agora vamos utilizar variáveis. Variáveis são nomes no Python que se referem a um valor.

Declarar uma variável é muito simples, basta fazer:
```
<nome> = <valor>
```

Onde `<nome>` pode ser qualquer palavra, desde que comece com uma letra e não tenha espaços. \
Exemplos: `idade`, `😳`, `i`, `j`, `Παρουσίαση`, etc.

Já `<valor>` você vêm utilizando desde o começo do minicurso! São coisas como números, strings, booleanos, etc. Além desses, você também pode utilizar variáveis, contanto que elas já tenham sido definidas antes.

#pagebreak()

*Importante:* Apesar de utilizarmos o símbolo de "igual" (`=`), algo como
```python
numero = 10
```
é lido como "`numero` *recebe* `10`".

Portanto não é possível fazer
```python
10 = numero
```


== #U[Funções Básicas de entrada e saída]
Até o momento, utilizamos o recurso *interativo* de Python, que é bastante útil para o aprendizado e prototipagem, porém, programas reais precisam se comunicar com o mundo exterior.


#image("diagrams/entrada-e-saida.svg", width: auto)
Entradas são coisas como o seu teclado, arquivos do seu computador, etc. \
Saídas são coisas como o seu monitor, um novo arquivo no seu computador, etc.

#pagebreak()

No Python, temos a fução `print()` para imprimir na tela, e `input()` para ler o teclado.

Como você experimentou o modo interativo de Python, pode parecer que a função `print()` é redundante, mas o código escrito no dia-a-dia é feito de várias linhas, e não é desejado que cada linha tenha seu resultado mostrado, então usamos o `print()` para mostrar só aquilo que queremos.

#image("screenshots/print.png")


#pagebreak()

A função `input()` é muito interessante. Ela nos permite criar programas que recebem entrada do usuário, possibilitando programas bem mais úteis.

```python
nome = input("Digite seu nome: ")
print("Olá", nome)
```
#image("screenshots/input.png")

== #U[Adendo: o que são funções?]
Funções estão fora do escopo desse minicurso, mas é preciso saber identificá-las. O uso delas é facilmente identificável, pois segue a seguinte estrutura:

```python
<nome>()
<nome>(arg1, arg2, arg3, ..., argN)
```

Onde `<nome>` segue a mesma lógica de variáveis, e os valores dentro dos parêntesis (também chamados de "argumentos "ou "parâmetros") são utilizados pela função para fazer algo.

No caso da função `print()`, ela apenas imprime o que recebe na sua tela.

A função `input()` também imprime o que recebe na tela, mas ela também lê o seu teclado e *retorna* (produz) o que você digitou como uma `str`.


#let hard(body) = text(fill: red.darken(70%), body)

= #U[Mão na massa!]
Faça alguns dos exercícios abaixo para testar o que aprendeu:

- Faça um script que leia o nome do usuário e o cumprimente
- Faça um script que leia dois nomes e imprima-os em ordem reversa
- #hard[Faça um script que leia dois números e imprima a soma deles]
- #hard[Faça um script que leia a idade do usuário e imprima o ano em que ele nasceu]

= #U[Conversão de tipos]
Você provavelmente encontrou o seguinte erro ao tentar realizar algum exercício da seção anterior:

#image("screenshots/str-error.png")

Isso acontece porque a função `input()` tem um resultado do tipo `str`, ou seja texto. Não conseguimos realizar operações aritméticas assim, então precisamos realizar conversão para inteiro.


#pagebreak()
Para fazer a conversão de um valor para outro tipo, basta escrever o nome do tipo seguido de parêntesis, como se fosse uma função:

#image("screenshots/type-conv.png")

= #U[Comandos de decisão]
== Se
Até o presente momento, estamos fazendo programas que são capazes de realizar cálculos e imprimir coisas. Porém, isso ainda é bem limitado, pois não é possível resolver problemas como
```
se o usuário é menor de idade, deixe entrar, senão, barre sua entrada
```

Para fazer isso em Python, utilizamos o comando `if` (inglês para "se"), que é utilizado da seguinte maneira:
```python
if <valor booleano>:
  <linha1>
  <linha2>
  ...
```

*Importante*: Para Python, o espaço antes da linha (chamado de indentação) delimita se ela pertence ao `if`.

#pagebreak()

Vamos analisar o seguinte exemplo:
```python
idade = int(input('Digite a sua idade'))

if idade >= 18:
  print("Maior de idade")

print('Seja bem vindo!')
```

Note que `print('Seja bem vindo!')` será executado independentemente se o usuário for ou não maior de idade, enquanto `print('Seja bem vindo!')` só será executado quando o usuário for maior de idade.



== Senão
Muito bom, mas ainda não conseguimos bloquear o usuário caso ele seja menor de idade, ou seja, a parte de:
```
senão, barre sua entrada
```

O comando `if` pode ser seguido opcionalmente do comando `else` (inglês para "senão"):

```python
idade = int(input('Digite a sua idade'))

if idade >= 18:
  print('Seja bem vindo!')
  print('<Coisas de adulto como imposto de renda e calvice aos 20>')

else:
  print('Usuário não tem a idade necessária')
  desligar_computador()
```

= #U[Mão na massa!]
- Faça um script que leia dois números e imprima a soma deles
- Faça um script que leia a idade do usuário e imprima o ano em que ele nasceu
- Leia uma temperatura em Fahrenheit e converta para Celsius
- Imprima o maior de dois números
- Imprima o maior de três números
- Leia a idade do usuário e o classifique como criança (< 14), adolescente (14-18) ou adulto (18+)
- Leia dois números e um símbolo de operação (`+`, `-`, `*`, `/`) e imprima o resultado do cálculo

= Muito obrigado por comparecer!
