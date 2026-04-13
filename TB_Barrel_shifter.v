`timescale 1ns/1ps

module tb_barrel_shifter_dir;

    reg  [7:0] data_in;
    reg  [2:0] shift;
    reg        dir;
    wire [7:0] data_out;

    barrel_shifter_dir uut (
        .data_in(data_in),
        .shift(shift),
        .dir(dir),
        .data_out(data_out)
    );

    initial begin
        data_in = 8'b10110011;

        dir = 0; shift = 2; #10;   // Left shift by 2
        dir = 1; shift = 2; #10;   // Right shift by 2
        dir = 0; shift = 4; #10;   // Left shift by 4
        dir = 1; shift = 3; #10;   // Right shift by 3
        
        $stop;
    end

endmodule



