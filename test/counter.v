// module counter (
//     input wire clk, 
//     input wire rst,
//     output reg [3:0] count
// );

// always @(posedge clk or negedge rst) begin
//     if (!rst) begin
//         count <= 4'b0000;
//     end

//     else if begin (count == 4'b1111)
//         count <= 4'b0000;
//     end

//     else begin
//         count <= count + 1;
//     end
// end
    
// endmodule

module counter (
    input           rstn,
    input           clk,
    output [3:0]    cnt,
    output          cout
);
    reg [3:0]   cnt_temp;
    always @(posedge clk or negedge rstn) 
        begin
            if (!rstn) 
                cnt_temp <= 4'b0000;
            else if (cnt_temp==4'd9) 
                cnt_temp <= 4'b0000;
            else
                cnt_temp <= cnt_temp + 1'b1;

        end

    assign cout = (cnt_temp==4'd9);
    assign cnt  = cnt_temp;
    
endmodule