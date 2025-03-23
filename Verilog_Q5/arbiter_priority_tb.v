`include "arbiter_priority.v"
`timescale 1ns/1ps
module arbiter_priority_tb;
  reg r1,r2,r3,clk,rstn;
  wire a1,a2,a3;
  arbiter_priority test(.r1(r1), .r2(r2), .r3(r3), .clk(clk), .rstn(rstn), .a1(a1), .a2(a2), .a3(a3)
                              );
    always #5 clk= ~clk;
    initial begin
      clk=0; rstn=0; r1=0; r2=0; r3=0;
      #10 rstn=1;
      #10 r1=1;
      #10 r1=0; r2=1;
      #10 r2=0; r3=1;
      #10 r1=1; r2=1; r3=1;
      #10 r1=0;
      #10 r2=0;
      #50 $finish;
    end
  initial begin
    $monitor("Time=%0t | rstn=%b | clk=%b | r1=%b | r2=%b | r3=%b | a1=%b | a2=%b | a3=%b", $time,rstn,clk,r1,r2,r3,a1,a2,a3);
    $dumpfile("waveform.vcd");
    $dumpvars(1);
  end
endmodule