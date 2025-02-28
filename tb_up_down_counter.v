`timescale 1ns / 1ps

module tb_up_down_counter;

reg clk;
reg reset;
reg up_down;
wire [3:0] count;

up_down_counter uut (
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

always #5 clk = ~clk;


initial begin
    // Inicialización de señales
    clk = 0;
    reset = 0;
    up_down = 0;

    // Reset inicial
    reset = 1;
    #10; 
    reset = 0;

    up_down = 1;
    #50; 

    up_down = 0;
    #50; 

    reset = 1;
    #10;
    reset = 0;

    up_down = 1;
    #50;

    $finish;
end

initial begin
    $monitor("Time = %0t | clk = %b | reset = %b | up_down = %b | count = %d", 
              $time, clk, reset, up_down, count);
end

endmodule
