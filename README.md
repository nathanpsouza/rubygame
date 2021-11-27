# Ruby Game
## Executando o projeto:

### Executando com o script utilitário:

```
./bin/exec
```

### Executando com o docker:

para obter um interpretador do ruby no diretório atual, execute:

```
docker run -it -v "$PWD:/app" -w /app ruby bash
```

para rodar o game, dentro do docker, execute:

```
ruby main.rb
```

jogo de RPG em modo texto.

o jogador vai escolher suas ações através do console.

o jogo vai ter um mapa na memória

o mapa do jogo vai ser composto de quadrados, e cada quadrado pode ter um monstro, um item, o próprio jogador ou ser vazio.

mu => move up
md => move down
ml => move left
mr => move right

apos um movimento, o jogo deve informar o que aconteceu:

encontrou um item
encontrou um monstro
nada aconteceu.

precisamos assegurar que o jogador não saia do mapa, então devemos ver se ele pode ou não executar um movimento para a direção selecionada

se a saida do movimento for um monstro, uma batalha começa. A batalha consiste de comparar os atributos do personagem com o monstro, quem for mais forte, ganha.

se a saida do movimento for um item, o item sera equipado e os atributos do item serao anexados ao personagem.

o mapa inicial é de 10x10

vamos ter 3 monstros, 3 items.

entidades:
Mapa
personagems:
  * Jogador
  * monstro
itens