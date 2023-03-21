module gray_to_binary #(
    parameter BIT_WIDTH = 8
) (
    input   [BIT_WIDTH-1:0] gray_value,
    output  [BIT_WIDTH-1:0] binary_value
);

assign  binary_value[BIT_WIDTH-1] = gray_value[BIT_WIDTH-1];

generate
    genvar i;
    for ( i = 0; i < BIT_WIDTH-1 ; i = i + 1 ) begin
        assign binary_value[i] = binary_value[i+1] ^ gray_value[i+1];
    end
endgenerate



endmodule