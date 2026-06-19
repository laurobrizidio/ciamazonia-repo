`timescale 1ns/1ps

module mux_tb;

parameter DATA_WIDTH = 8;

// Entradas do DUT
logic [DATA_WIDTH-1:0] D0;
logic [DATA_WIDTH-1:0] D1;
logic [DATA_WIDTH-1:0] D2;
logic [DATA_WIDTH-1:0] D3;

logic [1:0] S;

// Saída
logic [DATA_WIDTH-1:0] Y;

// Instância do DUT (Device Under Test)
mux_4_to_1 #(
    .DATA_WIDTH(DATA_WIDTH)
) dut (
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .S(S),
    .Y(Y)
);

initial begin

    // arquivo de waveform
    $dumpfile("mux.vcd");
    $dumpvars(0, mux_tb);

    // valores iniciais
    D0 = 8'h11;
    D1 = 8'h22;
    D2 = 8'h33;
    D3 = 8'h44;

    // teste seleção
    for (int i = 0; i < 4; i++) begin

        S = i;
        #10;

        case (S)
            2'b00: if (Y !== D0) $error("Erro: Y != D0");
            2'b01: if (Y !== D1) $error("Erro: Y != D1");
            2'b10: if (Y !== D2) $error("Erro: Y != D2");
            2'b11: if (Y !== D3) $error("Erro: Y != D3");
        endcase

    end

    $display("Teste finalizado.");
    $finish;

end

endmodule
