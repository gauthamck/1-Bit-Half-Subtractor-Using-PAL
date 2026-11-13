`timescale 1ns/1ps

module tb_half_subtractor;

reg A, B;
wire D, Bout;

half_subtractor uut (
    .A(A),
    .B(B),
    .D(D),
    .Bout(Bout)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, tb_half_subtractor);

    $display("A B | D Bout");

    A=0; B=0; #10;
    $display("%b %b | %b %b",A,B,D,Bout);

    A=0; B=1; #10;
    $display("%b %b | %b %b",A,B,D,Bout);

    A=1; B=0; #10;
    $display("%b %b | %b %b",A,B,D,Bout);

    A=1; B=1; #10;
    $display("%b %b | %b %b",A,B,D,Bout);

    $finish;
end

endmodule
