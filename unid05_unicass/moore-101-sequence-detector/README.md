# Detector de Sequencia 101 com FSM Moore

Atividade da Unidade 05 com implementacao de uma maquina de estados finitos do tipo Moore em Verilog para detectar uma sequencia binaria.

## Visao Geral

O arquivo `FSM_moore.v` implementa o modulo `FSM_101`, uma FSM sincronizada por clock com reset assincrono ativo em nivel baixo. A maquina usa quatro estados para acompanhar o historico da entrada serial `in` e aciona a saida `out` quando a sequencia esperada e identificada.

## Arquivos

- `FSM_moore.v`: modulo Verilog da maquina de estados `FSM_101`.

## Interface do Modulo

| Sinal | Direcao | Descricao |
| --- | --- | --- |
| `clk` | entrada | Clock da FSM. |
| `rst` | entrada | Reset assincrono ativo em `0`. |
| `in` | entrada | Bit serial de entrada. |
| `out` | saida | Sinal ativado quando a FSM reconhece a condicao de deteccao. |

## Estados

O modulo define quatro estados:

| Estado | Valor | Papel no detector |
| --- | --- | --- |
| `s0` | `0` | Estado inicial, sem prefixo reconhecido. |
| `s1` | `1` | Prefixo iniciado com `1`. |
| `s11` | `2` | Estado intermediario conforme transicoes do codigo. |
| `s10` | `3` | Estado que gera `out = 1` antes da proxima transicao. |

## Logica de Operacao

A FSM e atualizada na borda de subida de `clk` ou quando `rst` e levado a `0`.

```verilog
always @(posedge clk or negedge rst)
```

Quando `rst = 0`, a saida volta para `0` e o estado retorna para `s0`. Em operacao normal, o proximo estado depende do estado atual e do valor da entrada `in`.

As principais transicoes implementadas sao:

| Estado atual | `in = 0` | `in = 1` | `out` |
| --- | --- | --- | --- |
| `s0` | `s0` | `s1` | `0` |
| `s1` | `s11` | `s1` | `0` |
| `s11` | `s0` | `s10` | `0` |
| `s10` | `s11` | `s1` | `1` |

## Simulacao

Este diretorio contem apenas o modulo da FSM. Para simular, crie um testbench que gere `clk`, controle `rst` e aplique uma sequencia de bits em `in`.

Exemplo de compilacao com Icarus Verilog:

```bash
cd unid05_unicass/moore-101-sequence-detector
iverilog -g2012 FSM_moore.v fsm_tb.v -o fsm.out
vvp fsm.out
```

Caso o testbench gere um arquivo VCD, ele pode ser aberto no GTKWave:

```bash
gtkwave fsm.vcd
```

## Observacao

O arquivo atual implementa somente o design. Nao ha testbench, arquivo VCD ou relatorio PDF neste diretorio.
