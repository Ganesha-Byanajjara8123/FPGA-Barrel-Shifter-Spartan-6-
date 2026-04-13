`timescale 1ns / 1ps

module barrel_shifter_dir(
    input  [7:0] data_in,       // 8-bit input
    input  [2:0] shift,         // shift amount
    input        dir,           // 0 = left shift, 1 = right shift
    output [7:0] data_out
);

    assign data_out = (dir == 1'b0) ? (data_in << shift) : //for shift RIGHT
                                       (data_in >> shift); //for shift LEFT

endmodule



