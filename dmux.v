module dmux
  #(
    parameter N = 4
  )
  (
    input [N-1:0] d,
    input [1:0] s,
    output reg [N-1:0] y0, y1, y2, y3
  );
  always@* begin
    y0 = 0;
    y1 = 0;
    y2 = 0;
    y3 = 0;
    case(s)
      0: y0 = d;
      1: y1 = d;
      2: y2 = d;
      3: y3 = d;
      default: begin
        y0 = 'bz;
        y1 = 'z;
        y2 = 'z;
        y3 = 'z;
        end // default
    endcase
  end // always
  
endmodule
