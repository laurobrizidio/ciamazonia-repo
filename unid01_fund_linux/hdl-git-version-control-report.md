# Relatorio - Uso Basico do Git para Versionamento de Projetos HDL

**Programa de Apoio ao Desenvolvimento Tecnologico da Industria de Semicondutores (PADIS)**

**Autores:** Felipe Souza, Gustavo Felipe, Jorge Darlim e Lauro Brizidio

**Local:** Manaus - AM

**Ano:** 2025

## Sumario

1. [Introducao](#1-introducao)
2. [Objetivos](#2-objetivos)
3. [Materiais e Softwares Utilizados](#3-materiais-e-softwares-utilizados)
4. [Resultados Experimentais](#4-resultados-experimentais)
   - [4.1 Verificacao das Permissoes Administrativas](#41-verificacao-das-permissoes-administrativas)
   - [4.2 Gerenciamento de Pacotes](#42-gerenciamento-de-pacotes)
   - [4.3 Variaveis de Ambiente Shell](#43-variaveis-de-ambiente-shell)
   - [4.4 Manipulacao de Logs e Debugging](#44-manipulacao-de-logs-e-debugging)
   - [4.5 Makefile](#45-makefile)
   - [4.6 Uso Basico do Git](#46-uso-basico-do-git)
5. [Conclusao](#5-conclusao)
6. [Referencias Bibliograficas](#6-referencias-bibliograficas)

## 1. Introducao

O sistema operacional Linux e amplamente utilizado em servidores, sistemas embarcados e ambientes de desenvolvimento devido a sua estabilidade, seguranca e flexibilidade. Para administradores e profissionais de tecnologia, dominar comandos basicos, a estrutura do sistema de arquivos, permissoes e automacao por meio de scripts e essencial.

Este exercicio teve como proposito aplicar, na pratica, os principais conceitos relacionados ao gerenciamento de pacotes, configuracao de variaveis de ambiente, analise de logs, criacao de Makefiles e utilizacao basica do Git para o versionamento de projetos HDL. Esses conhecimentos, quando integrados, tornam-se essenciais tanto para automatizar rotinas quanto para compreender de maneira mais profunda o funcionamento interno de sistemas baseados em Linux.

## 2. Objetivos

- Instalar e gerenciar pacotes utilizando os comandos `apt` ou `yum`.
- Criar e manipular variaveis de ambiente em arquivos de shell, como `.bashrc` e `.profile`.
- Manipular e ler arquivos de log para diagnosticar erros comuns.
- Criar um Makefile simples para automatizar a compilacao de um modulo HDL.
- Utilizar comandos basicos do Git para versionar o projeto criado.

## 3. Materiais e Softwares Utilizados

- Sistema operacional Linux: Ubuntu 20.04 LTS, simulado.
- Terminal: Bash.
- Git.
- GitHub.

## 4. Resultados Experimentais

### 4.1 Verificacao das Permissoes Administrativas

Para verificar se o usuario possuia permissoes administrativas, foi executado o comando `sudo whoami` no terminal. Esse comando solicita ao sistema que execute uma operacao como superusuario. Ao ser concluido com sucesso e retornar a palavra `root`, confirmou-se que o usuario tinha acesso ao modo administrativo por meio do `sudo`.

```bash
sudo whoami
```

**Figura 1 - Permissao sudo.**

Fonte: Autores (2025).

### 4.2 Gerenciamento de Pacotes

Para verificar se determinados pacotes estavam instalados no sistema, foram utilizados comandos que listam todos os pacotes presentes no gerenciador `apt`. Em seguida, aplicou-se um filtro usando `grep` para localizar apenas os pacotes desejados.

Dessa forma, ao executar `apt list --installed | grep htop` e `apt list --installed | grep git`, o usuario pode identificar rapidamente se os pacotes `htop` e `git` encontravam-se instalados na maquina.

```bash
sudo apt list --installed | grep htop
sudo apt list --installed | grep git
sudo apt remove htop
```

**Figura 2 - Listagem dos pacotes git e htop.**

Fonte: Autores (2025).

**Figura 3 - Remocao do pacote htop.**

Fonte: Autores (2025).

### 4.3 Variaveis de Ambiente Shell

Para configurar uma variavel de ambiente temporaria, foi utilizado o comando `export PROJETO_HDL="Aluno_Lauro"`, que define o valor da variavel apenas para a sessao atual do terminal. Em seguida, executou-se o comando `echo $PROJETO_HDL` para verificar se a variavel havia sido criada corretamente. A saida exibiu o valor configurado, confirmando que a variavel estava ativa no ambiente.

```bash
export PROJETO_HDL="Aluno_Lauro"
echo $PROJETO_HDL
```

Para tornar a variavel permanente, ela pode ser adicionada ao arquivo `.bashrc` e as configuracoes podem ser recarregadas com `source`.

```bash
echo 'export PROJETO_HDL="Aluno_Lauro"' >> ~/.bashrc
source ~/.bashrc
```

**Figura 4 - Criando variavel temporaria PROJETO_HDL.**

Fonte: Autores (2025).

**Figura 5 - Adicionando a variavel como permanente no .bashrc.**

Fonte: Autores (2025).

**Figura 6 - Recarregando as configuracoes.**

Fonte: Autores (2025).

### 4.4 Manipulacao de Logs e Debugging

Para realizar a analise dos logs do sistema, foi utilizado o comando `cat /var/log/syslog | grep error`, que permite visualizar o conteudo do arquivo de log e, simultaneamente, filtrar apenas as linhas que contem a palavra `error`. Dessa forma, o usuario conseguiu identificar rapidamente mensagens de erro registradas pelo sistema, facilitando o processo de debugging e verificacao de eventos relevantes.

```bash
cat /var/log/syslog | grep error
```

**Figura 7 - Resultado do filtro de erros no syslog.**

Fonte: Autores (2025).

### 4.5 Makefile

Para validar a presenca do arquivo `Makefile` no diretorio de trabalho, foi utilizado o comando `ls`, que lista todos os arquivos presentes na pasta atual. Apos confirmar que o arquivo estava disponivel, executou-se o comando `make`, responsavel por iniciar o processo definido dentro do Makefile. O comando foi processado corretamente, indicando que o Makefile estava configurado e acessivel no diretorio.

```bash
ls
make
```

**Figura 8 - Criando e executando o arquivo Makefile.**

Fonte: Autores (2025).

### 4.6 Uso Basico do Git

Para iniciar o versionamento do projeto, foi criado um repositorio Git no diretorio de trabalho. Em seguida, adicionou-se um arquivo de documentacao inicial e verificou-se o estado do repositorio para identificar os arquivos pendentes de versionamento. Apos isso, o arquivo foi incluido na area de stage e o primeiro commit foi registrado, consolidando a versao inicial do projeto.

Posteriormente, adicionou-se o `Makefile` ao controle de versao e realizou-se um novo commit. Por fim, configurou-se o repositorio remoto e as alteracoes foram enviadas para a branch principal, concluindo o fluxo basico de uso do Git.

```bash
git init
vim README.md
git status
git add README.md
git commit -m "Primeiro commit"
git add Makefile
git commit -m "Adiciona Makefile"
git remote add origin <url-do-repositorio>
git push -u origin master
git log
```

**Figura 9 - Inicializando repositorio Git e fazendo commits.**

Fonte: Autores (2025).

**Figura 10 - Executando o comando git log.**

Fonte: Autores (2025).

## 5. Conclusao

A realizacao desta pratica permitiu compreender, de forma integrada, como os principais recursos do ambiente Linux apoiam o fluxo de desenvolvimento de projetos em HDL. O uso do gerenciador de pacotes mostrou a importancia da instalacao e manutencao de ferramentas essenciais, enquanto a configuracao de variaveis de ambiente e aliases evidenciou como a automacao simplifica o trabalho diario do desenvolvedor.

A analise de logs reforcou a necessidade de diagnosticar problemas de forma sistematica, habilidade indispensavel em qualquer ambiente de software. Alem disso, a criacao de um Makefile demonstrou como processos repetitivos podem ser organizados e executados com eficiencia. Por fim, a utilizacao do Git consolidou o entendimento sobre versionamento, garantindo controle, seguranca e rastreabilidade das modificacoes no projeto. Assim, a tarefa integrou conceitos fundamentais que servem como base para praticas profissionais mais robustas e estruturadas.

## 6. Referencias Bibliograficas

[1] Arquivo da disciplina: Tarefa - Unidade 1, Capitulo 2.

[2] Documentacao oficial do Linux: <https://www.kernel.org/doc/html/latest/>

[3] GNU Bash Manual: <https://www.gnu.org/software/bash/manual/>

[4] Guia Makefile simples: <https://makefiletutorial.com>
