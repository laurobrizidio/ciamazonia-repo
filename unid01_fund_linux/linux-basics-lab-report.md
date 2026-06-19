# Relatorio - Laboratorio Pratica 1

**Programa de Apoio ao Desenvolvimento Tecnologico da Industria de Semicondutores (PADIS)**

**Autores:** Felipe Souza, Gustavo Felipe, Jorge Darlim e Lauro Brizidio

**Local:** Manaus - AM

**Ano:** 2025

## Sumario

1. [Introducao](#1-introducao)
2. [Objetivos](#2-objetivos)
3. [Materiais e Softwares Utilizados](#3-materiais-e-softwares-utilizados)
4. [Resultados Experimentais](#4-resultados-experimentais)
   - [4.1 Estrutura de Diretorios e Permissoes](#41-estrutura-de-diretorios-e-permissoes)
   - [4.2 Comandos Essenciais do Terminal](#42-comandos-essenciais-do-terminal)
   - [4.3 Edicao de Arquivos](#43-edicao-de-arquivos)
   - [4.4 Criacao e Execucao de Script em Bash](#44-criacao-e-execucao-de-script-em-bash)
   - [4.5 Redirecionamento e Pipes](#45-redirecionamento-e-pipes)
5. [Conclusao](#5-conclusao)
6. [Referencias Bibliograficas](#6-referencias-bibliograficas)

## 1. Introducao

O sistema operacional Linux e amplamente utilizado em servidores, sistemas embarcados e ambientes de desenvolvimento devido a sua estabilidade, seguranca e flexibilidade. Para administradores e profissionais de tecnologia, dominar comandos basicos, a estrutura do sistema de arquivos, permissoes e automacao por meio de scripts e essencial.

Esta pratica teve como objetivo proporcionar familiaridade com o uso do terminal, manipulacao de arquivos e diretorios, edicao de arquivos usando diferentes editores e criacao de scripts Bash. Esses conhecimentos sao fundamentais para automatizar tarefas e compreender o funcionamento interno de sistemas baseados em Linux.

## 2. Objetivos

- Navegar pela estrutura de diretorios do Linux e identificar suas principais pastas.
- Utilizar comandos essenciais do terminal para criar, mover, copiar e localizar arquivos.
- Editar arquivos de texto utilizando os editores Nano e Vim.
- Criar, salvar, tornar executavel e executar um script Bash.
- Aplicar redirecionamento de saida e uso de pipes para processamento de dados no terminal.

## 3. Materiais e Softwares Utilizados

- Sistema operacional Linux: Ubuntu 20.04 LTS, simulado.
- Terminal: Bash.
- Editor Nano.
- Editor Vim.
- Editor grafico Gedit, opcional.

## 4. Resultados Experimentais

### 4.1 Estrutura de Diretorios e Permissoes

Utilizou-se o comando `cd /home` para acessar a pasta `home`. Posteriormente, para listar o conteudo da pasta, foi utilizado o comando `ls`. Para ver todos os diretorios na raiz do sistema, foi feito uso do comando `ls /`.

```bash
cd /home
ls
ls /
```

**Figura 1 - Codigo estrutural de diretorios.**

Fonte: Autores (2025).

### 4.2 Comandos Essenciais do Terminal

Inicialmente, criou-se um diretorio denominado `pratica_linux` por meio do comando `mkdir`. Em seguida, procedeu-se a copia de um arquivo de texto generico chamado `texto`, previamente elaborado, para dentro desse novo diretorio utilizando o comando `cp`. Logo apos, realizou-se o acesso ao diretorio por meio de `cd` e, para inspecionar o conteudo, utilizou-se `ls`.

Dentro dessa pasta, foi criada outra chamada `arquivos`, e o arquivo `texto` foi remanejado para o novo local utilizando o comando `mv texto arquivos/`, isto e, o arquivo foi deslocado para dentro de `arquivos`. Para visualizar o conteudo do arquivo, recorreu-se ao comando `cat`, informando o caminho completo ate ele.

Por fim, com o intuito de localizar onde o arquivo `texto` estava armazenado, utilizou-se o comando `find ~/diretorio_que_esta -name 'nome do arquivo'`, responsavel por buscar arquivos a partir de um nome especificado.

```bash
mkdir pratica_linux
cp texto pratica_linux/
cd pratica_linux
ls
mkdir arquivos
mv texto arquivos/
cat arquivos/texto
find ~/diretorio_que_esta -name 'nome do arquivo'
```

**Figura 2 - Codigo para manipulacao de arquivos.**

Fonte: Autores (2025).

### 4.3 Edicao de Arquivos

Dentro do diretorio previamente criado `pratica_linux`, utilizou-se o comando `nano` para abrir o ambiente de edicao Nano juntamente com o arquivo `arquivo.txt`. No editor, inseriu-se o texto `Primeiro teste no nano`, o qual foi devidamente salvo e fechado.

Em seguida, acessou-se o ambiente de edicao Vim por meio do comando `vim` aplicado ao mesmo `arquivo.txt`.

Por fim, tentou-se utilizar o comando `gedit`, porem o sistema retornou que o comando nao havia sido encontrado.

```bash
nano arquivo.txt
vim arquivo.txt
gedit arquivo.txt
```

**Figura 3 - Codigo para edicao de arquivos.**

Fonte: Autores (2025).

**Figura 4 - Ambiente Nano.**

Fonte: Autores (2025).

**Figura 5 - Ambiente Vim.**

Fonte: Autores (2025).

### 4.4 Criacao e Execucao de Script em Bash

Foi criado um arquivo `.sh` chamado `meuscript`. Em seguida, acessou-se o ambiente Nano e, dentro dele, declarou-se um script para execucao posterior, conforme orientado na atividade. Por meio do comando `chmod +x`, foi possivel conceder permissao de execucao ao arquivo `meuscript.sh` e, logo depois, ele foi executado utilizando-se o comando `./`.

O script exibe a frase `Listando arquivos do diretorio atual` e, na sequencia, lista todos os arquivos presentes no diretorio.

```bash
nano meuscript.sh
chmod +x meuscript.sh
./meuscript.sh
```

Exemplo de conteudo do script:

```bash
#!/bin/bash

echo "Listando arquivos do diretorio atual"
ls
```

**Figura 6 - Codigo para criacao de Script em Bash.**

Fonte: Autores (2025).

### 4.5 Redirecionamento e Pipes

O comando `ls > lista.txt` lista o conteudo do diretorio e salva o resultado em um arquivo chamado `lista.txt`. O operador `>` e utilizado para direcionar a saida do comando para um arquivo. Em seguida, utilizou-se o comando `cat` para abrir o arquivo `lista.txt`.

Por fim, ao utilizar simultaneamente os comandos `cat` e `grep`, foi possivel abrir o arquivo filtrando a visualizacao apenas para os arquivos que contem `.sh`. A utilizacao do pipe `|` serve para encaminhar a saida de um comando como entrada para outro, permitindo que comandos sejam encadeados.

```bash
ls > lista.txt
cat lista.txt
cat lista.txt | grep ".sh"
```

**Figura 7 - Codigo de redirecionamento e pipes.**

Fonte: Autores (2025).

## 5. Conclusao

Durante esta pratica, foi possivel explorar conceitos essenciais do Linux, incluindo navegacao pelo sistema de arquivos, manipulacao de diretorios e arquivos, edicao com diferentes editores e criacao de scripts Bash. A utilizacao de pipes e redirecionamentos mostrou como o terminal pode ser poderoso para automatizar tarefas e processar informacoes de forma eficiente. A atividade contribuiu significativamente para o desenvolvimento de habilidades basicas de administracao e operacao em ambientes Linux.

## 6. Referencias Bibliograficas

[1] Arquivo da disciplina: Tarefa - Unidade 1, Capitulo 1.

[2] Documentacao oficial do Linux: <https://www.kernel.org/doc/html/latest/>

[3] GNU Bash Manual: <https://www.gnu.org/software/bash/manual/>
