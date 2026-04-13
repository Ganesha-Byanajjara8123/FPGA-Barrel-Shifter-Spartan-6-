`timescale 1ns/1ps

module barrel_shifter_tb;

    reg  [7:0] data_in;
    reg  [2:0] shift;
    reg        dir;
    wire [7:0] data_out;

    // DUT
    barrel_shifter_dir uut (
        .data_in(data_in),
        .shift(shift),
        .dir(dir),
        .data_out(data_out)
    );

    initial begin
        $display("Time | dir | shift | data_in  | data_out");
        $monitor("%4t |  %b  |   %0d   | %b | %b",
                  $time, dir, shift, data_in, data_out);

        data_in = 8'b10110011;

        dir = 0; shift = 2; #10;
        dir = 1; shift = 2; #10;
        dir = 0; shift = 4; #10;
        dir = 1; shift = 3; #10;

        #10 $finish;
    end

endmodule
