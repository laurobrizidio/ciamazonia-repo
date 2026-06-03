# Projeto Final - Array SRAM 6T 4x4

Este diretorio reune os materiais do projeto final do curso de Microeletronica do CI Amazonia. O tema do trabalho e o desenvolvimento e validacao de um array SRAM 6T 4x4, passando por modelagem, simulacao, fluxo digital e verificacoes fisicas.

## Objetivo

Implementar e documentar uma memoria SRAM baseada em celulas 6T, usando um fluxo de projeto VLSI que cobre desde a definicao funcional ate a visualizacao fisica do layout.

## Escopo do Projeto

- Pesquisa introdutoria sobre SRAM e fluxo de projeto VLSI.
- Definicao do tema: array SRAM 6T 4x4.
- Modelagem da celula-base SRAM.
- Criacao do esquematico e simulacao no Xschem.
- Codificacao em Verilog do design e testbench.
- Simulacao funcional do modelo de referencia.
- Criacao do design no OpenROAD.
- Analise estatica de tempo pre-PnR e pos-PnR.
- Verificacao DRC.
- Extracao de parasitas.
- Verificacao LVS.
- Visualizacao do GDSII no KLayout.

## Modelo Funcional

O modelo da celula SRAM usa os sinais:

- `input_data`: dado de entrada.
- `clock`: sincronizacao por borda de subida.
- `WR`: controle de escrita.
- `RD`: controle de leitura.
- `CS`: chip select.
- `Q` e `Q_bar`: saidas armazenadas.

Operacao esperada:

- Com `CS = 0`, a memoria fica habilitada.
- Com `CS = 1`, o circuito entra em modo stand-by.
- Com `WR = 0`, a escrita do dado e permitida.
- Com `RD = 0`, a leitura do dado e permitida.

## Arquivos

| Arquivo | Descricao |
| --- | --- |
| `metodologia.excalidraw` | Diagrama editavel da metodologia do projeto. |
| `metodologia.png` | Exportacao visual da metodologia. |
| `sram-model.excalidraw` | Diagrama editavel do modelo funcional da celula SRAM. |
| `sram_model.png` | Exportacao visual do modelo funcional. |
| `sram_cell_xschem.png` | Esquematico/simulacao da celula SRAM no Xschem. |
| `gtk-wave-simulation.png` | Resultado de simulacao funcional visualizado em forma de onda. |
| `openroad.png` | Evidencia do fluxo no OpenROAD. |
| `pre-pnr-statictimeanalisis.png` | Analise estatica de tempo antes do PnR. |
| `postPnr-statictime.png` | Analise estatica de tempo depois do PnR. |
| `clocktreeview.png` | Visualizacao da arvore de clock. |
| `klayout_sim.png` | Visualizacao do layout no KLayout. |
| `lvs_report.png` | Relatorio/resultado de verificacao LVS. |
| `vlsidesignflow.png` | Referencia visual do fluxo de design VLSI. |
| `cellbymaster.png`, `fig01.png`, `fig03.png` | Figuras auxiliares do projeto. |

## Ferramentas Utilizadas

- Xschem para esquematico e simulacao em nivel de circuito.
- Verilog para modelagem digital e testbench.
- GTKWave para analise das formas de onda.
- OpenROAD para o fluxo de implementacao fisica.
- KLayout para visualizacao do GDSII/layout.
- Ferramentas de verificacao para STA, DRC, extracao de parasitas e LVS.

## Status

O diretorio contem principalmente diagramas e imagens de documentacao do fluxo. Os arquivos-fonte de Verilog, netlists, scripts de automacao e resultados textuais devem ser adicionados aqui caso o projeto seja expandido para reproducao completa.
