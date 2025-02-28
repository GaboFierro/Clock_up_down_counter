module test_clk_div (
    input CLOCK_50,
    output LEDR0
);

    wire clk_1Hz;

    clk_divider #(.FREQ(50000000)) CD (
        .clk(CLOCK_50), 
        .rst(1'b0), 
        .clk_div(clk_1Hz)
    );

    assign LEDR0 = clk_1Hz;  // LED debe parpadear cada segundo

endmodule
