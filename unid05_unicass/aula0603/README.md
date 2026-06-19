# Aula 02 - Somador Completo em SystemVerilog

Projeto da aula de 06/03/2026 com implementacao e simulacao de um somador completo em SystemVerilog.

## Visao Geral

O modulo `somador` implementa um somador completo de 1 bit com entradas `A`, `B` e `Cin`, gerando as saidas `Sum` e `Cout`. A logica e registrada na borda de subida do clock `clk`.

O testbench `somador_tb.sv` aplica todas as combinacoes possiveis das entradas e gera o arquivo `test.vcd` para visualizacao das formas de onda no GTKWave.

## Arquivos

- `somador.sv`: modulo SystemVerilog do somador completo.
- `somador_tb.sv`: testbench com todos os vetores de entrada.
- `test.vcd`: arquivo de formas de onda gerado pela simulacao.
- `somador_tb`: executavel gerado pelo Icarus Verilog.
- `config.yaml`: configuracao do fluxo com LibreLane.

## Interface do Modulo

| Sinal | Direcao | Descricao |
| --- | --- | --- |
| `clk` | entrada | Clock usado para registrar as saidas. |
| `A` | entrada | Primeiro bit de entrada. |
| `B` | entrada | Segundo bit de entrada. |
| `Cin` | entrada | Carry de entrada. |
| `Sum` | saida | Soma de 1 bit. |
| `Cout` | saida | Carry de saida. |

## Logica Implementada

O somador usa as expressoes booleanas classicas:

```systemverilog
Sum <= A ^ B ^ Cin;
Cout <= (A&B) | (Cin & (A^B));
```

Tabela verdade:

| `A` | `B` | `Cin` | `Sum` | `Cout` |
| --- | --- | --- | --- | --- |
| `0` | `0` | `0` | `0` | `0` |
| `0` | `0` | `1` | `1` | `0` |
| `0` | `1` | `0` | `1` | `0` |
| `0` | `1` | `1` | `0` | `1` |
| `1` | `0` | `0` | `1` | `0` |
| `1` | `0` | `1` | `0` | `1` |
| `1` | `1` | `0` | `0` | `1` |
| `1` | `1` | `1` | `1` | `1` |

## Simulacao

Entre no diretorio da aula:

```bash
cd unid05_unicass/aula0603
```

Compile o design e o testbench:

```bash
iverilog -g2012 somador.sv somador_tb.sv -o somador_tb
```

Execute a simulacao:

```bash
vvp somador_tb
```

Abra as formas de onda no GTKWave:

```bash
gtkwave test.vcd
```

## Design Fisico

O arquivo `config.yaml` configura o fluxo para o design `somador`:

```yaml
DESIGN_NAME: somador
VERILOG_FILES: dir::somador.sv
CLOCK_PORT: clk
CLOCK_PERIOD: 10 # 10ns = 100MHz
FP_SIZING: absolute
DIE_AREA: [0,0,150,150]
PL_TARGET_DENSITY_PCT: 80
```

Para executar o fluxo com LibreLane:

```bash
librelane --pdk ihp-sg13g2 config.yaml
```

Para abrir o resultado no OpenROAD:

```bash
librelane --pdk ihp-sg13g2 config.yaml --last-run --flow OpenInOpenROAD
```

Para abrir o GDSII no KLayout:

```bash
librelane --pdk ihp-sg13g2 config.yaml --last-run --flow OpenInKLayout
```
