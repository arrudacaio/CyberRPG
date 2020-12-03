# Projeto da Disciplina Paradigmas de Linguagens de Programação (2020.3)

A ideia é termos um jogo com um estilo RPG (Rolle-Playing Game) totalmente via linha de comando.


## Módulos importados usados no projeto:
 - System.Directory
 - System.IO
 - System.Random
 
### Funcional:
## Para rodar o CyberRPG no Ubuntu, você precisará baixar a biblioteca Random. Siga os passos para instalar:
 
```
Execute os seguintes comandos no terminal

sudo apt install cabal-install
cabal update
cabal install random
```


## Para rodar o CyberRPG no Windows, você precisará baixar a biblioteca Random. Siga os passos para instalar:

Antes de tudo instale o chocolatey (gerenciador de pacotes para o windows) 
https://chocolatey.org/install 



```
Execute os seguintes comandos no terminal: 

choco install haskell-stack 
stack update
stack install random
Pronto agora você está apto para rodar o projeto! Faça: 
stack ghci  .\pm.hs 
```

## Para rodar o CyberRPG (Prolog): 
```
Navegue até a página /Logico no seu terminal e faça: 
swipl -q -f ./pm.pl   
main.

```
