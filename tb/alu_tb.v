module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [3:0] sel;

wire [7:0] result;
wire carry;
wire zero;
wire overflow;
wire negative;

alu uut(

    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry),
    .zero(zero),
    .overflow(overflow),
    .negative(negative)

);

initial begin

    $dumpfile("waveform.vcd");
    $dumpvars(0, alu_tb);

    A = 8'd10;
    B = 8'd5;

    sel = 4'b0000; #10;
    sel = 4'b0001; #10;
    sel = 4'b0010; #10;
    sel = 4'b0011; #10;
    sel = 4'b0100; #10;
    sel = 4'b0101; #10;
    sel = 4'b0110; #10;
    sel = 4'b0111; #10;
    sel = 4'b1000; #10;

    $finish;

end

initial begin

    $monitor(
        "Time=%0t A=%d B=%d sel=%b result=%d carry=%b zero=%b overflow=%b negative=%b",
        $time,
        A,
        B,
        sel,
        result,
        carry,
        zero,
        overflow,
        negative
    );

end

endmodule