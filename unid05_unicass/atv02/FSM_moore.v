`timescale 1ps/1ps`

module FSM_101(
    input clk,
    input rst,
    input in,
    output reg out
);

parameter s0 = 0, s1 = 1, s11 = 2, s10 = 3;

reg [1:0] state;

//This block controls the state and the Asynchronous reset.
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        out <= 0;
        state <= s0;
    end
    else begin
        case(state) 
        s0: begin 
            state <= in ? s1 : s0;
            out <= 0;
        end
        s1: begin 
            state <= in ? s1 : s11;
            out <= 0;
        end
        s11: begin 
            state <= in ? s10 : s0;
            out <= 0;
        end
        s10: begin 
            state <= in ? s1 : s11;
            out <= 1;
        end
        default: begin
            state <= s0;
            out <= 0;
        end
        endcase
    end
end

endmodule