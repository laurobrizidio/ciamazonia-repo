# Multiplexador 4:1 em SystemVerilog

Atividade da Unidade 05 do programa Universalization of IC Design from CASS, com implementacao, simulacao e analise de um multiplexador 4:1 em SystemVerilog.

## Visao Geral

O multiplexador 4:1 e um circuito digital combinacional com quatro entradas de dados, duas linhas de selecao e uma saida. De acordo com o valor de selecao, uma das entradas `D0`, `D1`, `D2` ou `D3` e encaminhada para a saida `Y`.

Nesta atividade, o circuito foi implementado de forma parametrizavel em SystemVerilog, simulado com Icarus Verilog e analisado no GTKWave por meio do arquivo de forma de onda `mux.vcd`.

## Arquivos

- `relatorio0503.pdf`: relatorio da atividade com introducao, objetivos, codigo, simulacao e conclusao.
- `mux_4_to_1.png`: imagem relacionada ao multiplexador 4:1.
- `gtkwave.png`: captura da simulacao no GTKWave.
- `mux4/mux_4_to_1.sv`: modulo SystemVerilog do multiplexador 4:1.
- `mux4/mux_tb.sv`: testbench usado para validar o funcionamento do circuito.
- `mux4/mux.vcd`: arquivo de formas de onda gerado pela simulacao.
- `mux4/mux.out`: executavel gerado pelo Icarus Verilog.
- `mux4/config.yaml`: configuracao do fluxo de design fisico com LibreLane.
- `mux4/README.MD`: instrucoes especificas do projeto `mux4`.

## Objetivos

- Implementar um multiplexador 4:1 em SystemVerilog.
- Utilizar parametro para tornar a largura dos dados configuravel.
- Criar um testbench para aplicar estimulos e verificar a saida.
- Simular o circuito com Icarus Verilog.
- Visualizar as formas de onda no GTKWave.
- Validar o comportamento conforme a tabela de verdade do MUX 4:1.

## Funcionamento

O modulo `mux_4_to_1` possui quatro entradas de dados de largura parametrizavel e uma entrada de selecao de 2 bits:

| Selecao `S` | Saida `Y` |
| --- | --- |
| `00` | `D0` |
| `01` | `D1` |
| `10` | `D2` |
| `11` | `D3` |

No testbench, as entradas sao inicializadas com os seguintes valores:

| Entrada | Valor |
| --- | --- |
| `D0` | `8'h11` |
| `D1` | `8'h22` |
| `D2` | `8'h33` |
| `D3` | `8'h44` |

O sinal `S` percorre os valores de `0` a `3`, e o testbench verifica se `Y` corresponde a entrada selecionada.

## Simulacao

Entre no diretorio do projeto:

```bash
cd unid05_unicass/atv01/mux4
```

Compile os arquivos SystemVerilog:

```bash
iverilog -g2012 mux_4_to_1.sv mux_tb.sv -o mux.out
```

Execute a simulacao:

```bash
vvp mux.out
```

Abra a forma de onda no GTKWave:

```bash
gtkwave mux.vcd
```

Resultado esperado da simulacao:

```text
Teste finalizado.
```

## Design Fisico

O arquivo `mux4/config.yaml` define a configuracao basica para executar o fluxo com LibreLane:

```yaml
DESIGN_NAME: mux_4_to_1
VERILOG_FILES: dir::mux_4_to_1.sv
FP_SIZING: absolute
DIE_AREA: [0,0,150,150]
PL_TARGET_DENSITY_PCT: 80
```

Como o circuito e combinacional, nao ha definicao de clock no arquivo de configuracao.

Para executar o fluxo:

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

## Referencias

- UNIC-CASS, `uniccass-icdesign-tools`: <https://github.com/unic-cass/uniccass-icdesign-tools>
- Icarus Verilog: <http://iverilog.icarus.com>
- GTKWave: <http://gtkwave.sourceforge.net>
- Samir Palnitkar, *Verilog HDL: A Guide to Digital Design and Synthesis*, 2nd ed.
