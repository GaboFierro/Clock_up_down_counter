module counter #(
    parameter OUT_WIDTH = 6,     
    parameter MAX_COUNT = 59     
)(
    input clk, rst, enable,
    output reg [OUT_WIDTH-1:0] count
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 0;  // 🔹 Inicia en 0 siempre
        else if (enable) begin
            if (count == MAX_COUNT) 
                count <= 0;
            else
                count <= count + 1;
        end
    end
endmodule
