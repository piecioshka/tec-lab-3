module dmux8
    #(
        parameter N = 6
    )
    (
        input [N-1:0] d,
        input [2:0] s,
        output [N-1:0] y0, y1, y2, y3, y4, y5, y6, y7
    );

    wire [N-1:0] d0, d1;
    // dmux #(.N(N)) - przekazanie do dmux zmiennej lokalnej, w tym przypadku 6
    dmux #(.N(N)) a (.s({1'b0,s[2]}), .d(d), .y0(d0), .y1(d1));
    dmux #(.N(N)) b (.s(s[1:0]), .d(d0), .y0(y0), .y1(y1), .y2(y2), .y3(y3));
    dmux #(.N(N)) c (.s(s[1:0]), .d(d1), .y0(y4), .y1(y5), .y2(y6), .y3(y7));

endmodule

