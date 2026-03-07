# Aula 02 - 06/03/2026                         
## Somador 

Primeiro foi criado os codigos do somador e do testbench no [Eda Playground](https://www.edaplayground.com/).

Geralmente fazemos os codigos de `design.sv` e `testbench.sv` no EDA Playground e realizamos os testes. 

Apos isso, é feito o download os arquivos, executado no UNI-CASS.

**UNICASS**

A partir do codigo baixado, execute os seguintes comandos para garantir que o codigo está funcionando.

Icarus Verilog

```
iverilog -g2012 mux_4_to_1.sv mux_tb.sv -o mux.out 

```

Após a compilação do codigo, executa-se o seguinte comando para simulação do circuito digital.

```
vvp mux.out
```


Para visualizar os graficos no GTK Wave execute:

```
gtkwave mux.vcd
```

