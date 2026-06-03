`timescale 1ns/1ps

// ======================================================
// SRAM 4x4 WITH CHIP SELECT
// ======================================================

module sram (
    input  wire        clk,
    input  wire        cs,            // Chip Select (ativo alto)
    input  wire        wr_n,          // Write Enable (ativo baixo)
    input  wire        rd_n,          // Output Enable / Read Enable (ativo baixo)

    //Decodificadores Linha e Coluna
    input  wire [1:0]  row_addr,      
    input  wire [1:0]  col_addr,      

    input  wire        data_in,

    output reg         data_out,
    output reg         data_out_bar
);

    reg memory [0:3][0:3];

    integer i, j;

    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                memory[i][j] = 1'b0;
            end
        end
    end

    // WRITE OPERATION

    always @(posedge clk) begin

        // CS ativo + WE ativo
        if (cs && !wr_n) begin
            memory[row_addr][col_addr] <= data_in;
        end

    end

    // READ OPERATION

    always @(*) begin

        // CS ativo + OE ativo
        if (cs && !rd_n) begin

            data_out     = memory[row_addr][col_addr];
            data_out_bar = ~memory[row_addr][col_addr];

        end
        else begin

            data_out     = 1'bz;
            data_out_bar = 1'bz;

        end

    end

endmodule