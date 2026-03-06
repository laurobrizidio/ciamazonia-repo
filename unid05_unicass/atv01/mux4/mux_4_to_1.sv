module mux_4_to_1
#(
    parameter DATA_WIDTH = 8
)
(
    input  logic [DATA_WIDTH-1:0] D0,
    input  logic [DATA_WIDTH-1:0] D1,
    input  logic [DATA_WIDTH-1:0] D2,
    input  logic [DATA_WIDTH-1:0] D3,
    input  logic [1:0] S,
    output logic [DATA_WIDTH-1:0] Y
);

always @(*) begin
    case(S)
        2'b00: Y = D0;
        2'b01: Y = D1;
        2'b10: Y = D2;
        2'b11: Y = D3;
        default: Y = '0;
    endcase
end

endmodule
