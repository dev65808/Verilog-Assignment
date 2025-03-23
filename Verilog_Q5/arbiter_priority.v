module arbiter_priority(input r1,r2,r3,clk,rstn, output reg a1,a2,a3);
  reg r1_prev, r2_prev, r3_prev;
  always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
      a1<=0;
      a2<=0;
      a3<=0;
      r1_prev=0;
      r2_prev=0;
      r3_prev=0;
    end else begin
      a1<=0;
      a2<=0;
      a3<=0;
      //ensuring a new request
      if(r1 && !r1_prev) begin
        a1<=1; a2<=0; a3<=0;
      end else if(r2 && !r2_prev) begin
        a1<=0; a2<=1; a3<=0;
      end else if(r3 && !r3_prev) begin
        a1<=0; a2<=0; a3<=1;
      end
      //updating requests values
      r1_prev<=r1;
      r2_prev<=r2;
      r3_prev<=r3;
    end
  end
endmodule