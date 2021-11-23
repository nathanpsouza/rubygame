=== Executando o projeto:

para obter um interpretador do ruby no diretório atual, execute:

```
docker run -it -v "$PWD:/app" -w /app ruby bash
```

para rodar o game, dentro do docker, execute:

```
ruby main.rb
```

