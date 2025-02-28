module one_shot_tb();

reg clk;
reg button;

wire one_shot;

one_shot DUT(
.clk(clk),
.button(button),
.one_shot(one_shot)
);

always 
begin

#1 clk=~clk;

end 

initial 
begin
clk=0;
button=0;
#10;
button=1;
#2000
button=0;
#10
$stop;

end

endmodule 
