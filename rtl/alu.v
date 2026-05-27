module alu(

    input [7:0] A,
    input [7:0] B,
    input [3:0] sel,

    output reg [7:0] result,
    output reg carry,
    output reg zero,
    output reg overflow,
    output reg negative

);

always @(*) begin

    // Default values
    carry=0;
    overflow=0;

    case(sel)

        // Addition
        4'b0000:begin
            {carry,result}=A+B;
        end

        // Subtraction
        4'b0001:begin
            {carry,result}=A-B;
        end

        // AND operator
        4'b0010:begin
            result=A&B;
        end

        // OR operator
        4'b0011:begin
            result=A|B;
        end

        // XOR operator
        4'b0100:begin
            result=A^B;
        end

        // Left Shift
        4'b0101:begin
            result=A<<1;
        end

        // Right Shift
        4'b0110: begin
            result=A>>1;
        end

        // Multiplication
        4'b0111:begin
            result=A*B;
        end

        // Comparision
        4'b1000:begin
            result=(A>B)?8'd1:8'd0;
        end

        default:begin
            result=8'd0;
        end

    endcase

    // Zero Flag
    zero=(result==0);

    // Negative flag
    negative=result[7];

    // Overflow flag
    overflow=(A[7]==B[7])&&(result[7]!=A[7]);
end
endmodule