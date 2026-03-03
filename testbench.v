module D_flip_flop_tb;

reg D;
reg clk;
reg rst;
wire Q;

D_flip_flop uut (
    .clk(clk),
    .rst(rst),
    .D(D),
    .Q(Q)
);

// Clock Generation (10ns period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end


initial begin
    $monitor("Time=%0t | clk=%b | rst=%b | D=%b | Q=%b",
              $time, clk, rst, D, Q);


    rst = 1;
    D   = 0;
    #10;

    rst = 0;
    D   = 1; #10;
    D   = 0; #10;
    D   = 1; #10;

    rst = 1; #10;
    rst = 0; #10;

    $finish;
end

endmodule
