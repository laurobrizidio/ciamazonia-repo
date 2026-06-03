`timescale 1ns/1ps

// ======================================================
// TESTBENCH - SRAM 4x4
// ======================================================

module tb_sram;

    // =========================
    // ENTRADAS
    // =========================
    reg clk;
    reg cs;
    reg wr_n;
    reg rd_n;

    reg [1:0] row_addr;
    reg [1:0] col_addr;

    reg data_in;

    // =========================
    // SAÍDAS
    // =========================
    wire data_out;
    wire data_out_bar;

    // =========================
    // DUT
    // =========================
    sram dut (
        .clk(clk),
        .cs(cs),
        .wr_n(wr_n),
        .rd_n(rd_n),
        .row_addr(row_addr),
        .col_addr(col_addr),
        .data_in(data_in),
        .data_out(data_out),
        .data_out_bar(data_out_bar)
    );

    // =========================
    // CLOCK
    // =========================
    always #5 clk = ~clk;

    // =========================
    // TESTE
    // =========================
    initial begin

        // waveform
        $dumpfile("sram.vcd");
        $dumpvars(0, tb_sram);

        // inicialização
        clk      = 0;
        cs       = 0;
        wr_n     = 1;
        rd_n     = 1;
        row_addr = 2'b00;
        col_addr = 2'b00;
        data_in  = 0;

        // ==========================================
        // WRITE OPERATION
        // escreve '1' em [1][2]
        // ==========================================
        #10;

        cs       = 1;
        wr_n     = 0;
        rd_n     = 1;

        row_addr = 2'b01;
        col_addr = 2'b10;

        data_in  = 1'b1;

        #10;

        wr_n = 1;

        // ==========================================
        // WRITE OPERATION
        // escreve '0' em [3][0]
        // ==========================================
        #10;

        wr_n     = 0;

        row_addr = 2'b11;
        col_addr = 2'b00;

        data_in  = 1'b0;

        #10;

        wr_n = 1;

        // ==========================================
        // READ [1][2]
        // ==========================================
        #10;

        rd_n     = 0;

        row_addr = 2'b01;
        col_addr = 2'b10;

        #10;

        // ==========================================
        // READ [3][0]
        // ==========================================
        #10;

        row_addr = 2'b11;
        col_addr = 2'b00;

        #10;

        // ==========================================
        // HOLD / IDLE
        // ==========================================
        #10;

        cs   = 0;
        rd_n = 1;

        #20;

        $finish;

    end

endmodule