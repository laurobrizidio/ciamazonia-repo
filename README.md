# CI Amazonia - Curso de Microeletrônica

## Unidade 1 – Básico de Linux para Projetos Eletrônicos (3 semanas)

- Conceitos fundamentais do sistema operacional Linux.
- Estrutura de diretórios, permissões de arquivos e comandos essenciais do terminal.
- Edição de arquivos (vim, nano, gedit) e criação de scripts Bash.
- Redirecionamentos, pipes e automação de tarefas.
- Instalação e gerenciamento de pacotes (apt, yum).
- Variáveis de ambiente e arquivos de configuração de shell (.bashrc, .profile).
- Manipulação de logs e depuração de erros.
- Introdução a Makefiles e uso básico do Git em projetos HDL.
- Fundamentos do Yocto Project: BitBake, Poky e layers.
- Setup do ambiente de build e criação de camadas customizadas.
- Definição de recipes para pacotes e imagens.
- Customização de kernel, rootfs e construção de imagens mínimas (QEMU/Raspberry Pi).
- Debug e deploy da imagem gerada.


## Unidade 2 – Fundamentos de Eletrônica Digital (2 semanas)

- Álgebra booleana e simplificação de expressões lógicas.
- Portas lógicas básicas e compostas (AND, OR, NOT, NAND, XOR).
- Conceitos de flip-flops, registradores, contadores e multiplexadores.
- Aplicações de circuitos combinacionais e sequenciais.


## Unidade 3 – Fundamentos de CMOS (3 semanas)

- Estrutura de cristais semicondutores (Si, Ge, GaAs).
- Diodos e transistores de efeito de campo (JFET, MOSFET).
- Tipos de MOSFET: depleção e intensificação.
- Curvas características e comportamento elétrico.
- Lógica CMOS: evolução (SSI a VLSI) e Lei de Moore.
- Projeto de inversores e portas NAND/NOR em CMOS.
- Portas compostas, transistores de passagem, tristates e multiplexadores.


## Unidade 4 – VLSI e Very Deep Sub Micron (4 semanas)

- Introdução ao layout CMOS e processo de fabricação em wafer.
- Regras de design (MOSIS), stick diagrams e layout de portas.
- Etapas de fabricação: formação do wafer, poços, fotolitografia, isolamento, gate, dreno, contatos, metalização e passivação.
- Noções de metrologia e técnicas de medição.
- Regras de projeto: wells, transistores, contatos, vias e metal.
- Tecnologias avançadas: SOI, dielétricos high-k/low-k, silício tensionado, transistores plásticos e de alta tensão.
- Melhorias de processo: FinFETs e nanotubos de carbono.
- Design for Manufacturability (DFM) e problemas de fabricação.
- Efeitos parasitas, calibração, migração de tecnologia e tapeout de circuitos integrados.

## Unidade 5 – Design Digital

- Introdução à linguagem HDL (SystemVerilog): modelagem comportamental e estrutural.
- Simulação lógica e análise temporal básica.
- Projeto hierárquico de sistemas digitais.
- FSM (máquinas de estado finito): Mealy e Moore.
- Considerações de clock, setup/hold, skew e race condition.
- Introdução a teoria de grafos.
- BDD, ROBDDs, STAMINA e NOVA.

## Unidade 6 – Otimização do processo CMOS (VLSI)

- Delay: Otimização de tempo, Resposta do transiente, RC delay model, impacto do layout na capacitância, Modelo de atraso linear, Esforço Lógico, Parasitic delay.
- Potência: Potência dinâmica e estática, clock gating, glitches, DVFS em SoCs, corrente de curto-circuito, subthreshold (DIBL) e gate leakage, BTBT e GIDL, multi-VDD e otimização do atraso-energia.
- Interconexões: Geometria dos fios, modelagem de interconexões (resistência, capacitância, indutância, skin effect e temperatura), delay, controle de crosstalk, ruído, repetidores e regeneradores
- Robustez: Variabilidade: Tensão de Alimentação, Temperatura, Variação do processo, Design corners; Confiabilidade: Terminologia de Confiabilidade, Desgaste do Óxido, Desgaste das Interconexões, Erros Suaves, Falha por Sobretensão, Latchup; Escalonamento: Escalonamento de Transistores, Escalonamento de Interconexões, Roteiro Tecnológico Internacional para Semicondutores, Impactos no Projeto.

## Unidade 7 - Fluxo de projeto ASIC

- Design Flow: Evolução, era da integração, ferramentas incrementais, acesso esparso e desafios futuros.
- Síntese lógica: síntese RTL, minimização em 2 e múltiplos níveis, modelagem de biblioteca, análise de tempo (STA) e síntese física.
- Análise e Otimização de Potência do Nível de Circuito ao Nível RTL: análise de potência, Redução de Consumo no nível de circuito e síntese lógica para baixa potência.
- Verificação de Equivalência: lógica booleana aplicada, verificação de equivalência Combinacional e sequencial.
- Alocação de Células (placement) no Layout Digital: etapa global de posicionamento, Refinamento do Placement e Correção Legal e Avanços Recentes em Técnicas de Placement.
- Análise Estática de Tempo (STA): Modelos de Atraso em Níveis Lógicos, Verificação de Atrasos em Lógica Combinacional, Análise de Tempo em Circuitos Sequenciais e sob variações.
- Roteamento: Técnicas de roteamento simples e multinet, análise de congestionamento, atraso e slew, roteamento de clock e estratégias modernas de interconexão.
- Gate Sizing: Modelos de atraso e algoritmos práticos.
- Projeto e Síntese de Clock: Distribuição de clock global/local e técnicas de low power.
- Design closure: Evolução do fluxo de projeto e restrições de design (econômicas, de desempenho, potência e confiabilidade), práticas atuais desde o RTL até o roteamento, e otimizações finais incluindo CTS e variabilidade.
- Design Rule Check: Operações de DRC, DRC Baseado em Linguagem, Projeto para Fabricação, Reconhecimento de Padrões, Multipadrões.
- Design for Manufacturability (DFM): Modelagem de perdas de rendimento, otimizações lógicas e paramétricas, simulações estatísticas e integração da fabricabilidade ao fluxo de síntese física.
- Extração de Layout: análise de problemas, extração de dispositivos projetados e parasitários, conectividade, resistência, capacitância e indutância, além de redução de rede e variações de processo.
- Introdução aos principais EDA tools (Synopsys, ChipInventor, Cadence, Mentor).
