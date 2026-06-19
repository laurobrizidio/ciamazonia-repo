# Multiplexador 4:1 - Ci Amazônia


## Compilação do Circuito


```
iverilog -o mux.out mux_tb.sv mux_4_to_1.sv

```

Após essa etapa, vai ser gerado um arquivo `mux.out.

```
vvp mux
```

Apos esse passo, será gerado um arquivo .vcd, onde você poderá gerar visualizar a simulação no GTK Wave.

```
gtkwave mux.vcd
```

## Criação do DFM ( Design for Manufacturability) - OpenRoad, KLayout

Após validar o circuito e verificar se o funcionamento está correto, podemos gerar o DFM para fabricação.

Usando a ferramenta librelane para realizar essa compilação, mas antes disso precisamos realizar algumas configurações.

Primeiro devemos criar o arquivo `config.yaml`, responsavel por realizar a configuração do design como um todo.

Em circuitos combinacionais, não precisamos adicionar as variaveis CLOCK_PORT, e CLOCK_NAME, pois não existem.

As variaveis, FP_SIZING, DIE_AREA e PL_TARGET_DENSITY_PCT são para configuração do tamanho da cell que ira ficar o circuito.

```
DESIGN_NAME: mux_4_to_1
VERILOG_FILES: dir::mux_4_to_1.sv
FP_SIZING: absolute
DIE_AREA: [0,0,150,150]
PL_TARGET_DENSITY_PCT: 80
```

Após criar o arquivo, podemos executar o comando do librelane.

```
librelane --pdk ihp-sg13g2 config.yaml
```

Se após a compilação apareceu 

```
* Antenna
Passed ✅

* LVS
Passed ✅

* DRC
Passed ✅
```

Então o circuito passou em todas as regras.

Podemos agora visualizar o design do circuito no Openroad.

```
librelane --pdk ihp-sg13g2 config.yaml --last-run --flow OpenInOpenROAD
```

Para visualizar o design GDSII no KLayout execute o comando abaixo: 

```
librelane --pdk ihp-sg13g2 config.yaml --last-run --flow OpenInKLayout
```
