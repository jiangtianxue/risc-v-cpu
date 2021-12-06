// `timescale 1ns/1ns
// module counter_tb;

// reg clk, rst;
// wire [3:0] count;

// counter uut1(
//     .clk(clk),
//     .rst(rst),
//     .count(count)
// );

// initial begin
//     clk = 0;
//     rst = 0;
//     #15 rst = 1;
// end

// initial
// forever begin
//     #5 clk = ~clk;
// end

    
// endmodule

module counter_tb;

reg rstn, clk;
wire [3:0] cnt;
wire cout;

counter inst1(
    .clk(clk),
    .rstn(rstn),
    .cnt(cnt),
    .cout(cout)
);

initial
begin            
    $dumpfile("wave.vcd");        //生成的vcd文件名称
    $dumpvars(0, counter_tb);    //tb模块名称
end

initial 
begin
    rstn = 0; clk = 0;   
    #25 rstn = 1; 

    #200 $finish;
end

initial 
forever #5 clk = ~clk;

    
endmodule