module binary_to_gray #(
    parameter BIT_WIDTH = 8
) (
    input   [BIT_WIDTH-1:0] binary_value,
    output  [BIT_WIDTH-1:0] gray_value
);

generate
    genvar i;
    for ( i = 0; i < BIT_WIDTH-1 ; i = i + 1 ) begin
        assign gray_value[i] = binary_value[i] ^ binary_value[i+1];
    end
endgenerate

assign  gray_value[BIT_WIDTH-1] = binary_value[BIT_WIDTH-1];

endmodule