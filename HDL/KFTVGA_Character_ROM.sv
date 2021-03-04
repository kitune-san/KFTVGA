//
// KFTVGA_Character_ROM
// Character ROM
//
// Written by kitune-san
//
module KFTVGA_Character_ROM (
    input   logic   [8:0]   char_code,
    input   logic   [2:0]   char_line_number,
    output  logic   [7:0]   char_line_out
);

    logic   [7:0]   character[8];

    always_comb begin
        casez (char_code)
            8'd000: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end

            8'd001: begin
                character[0] = 8'b01111111;
                character[1] = 8'b01010101;
                character[2] = 8'b01010101;
                character[3] = 8'b01000001;
                character[4] = 8'b01010101;
                character[5] = 8'b01001001;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd002: begin
                character[0] = 8'b01111111;
                character[1] = 8'b01101011;
                character[2] = 8'b01101011;
                character[3] = 8'b01111111;
                character[4] = 8'b01101011;
                character[5] = 8'b01110111;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd003: begin
                character[0] = 8'b01100011;
                character[1] = 8'b01110111;
                character[2] = 8'b01111111;
                character[3] = 8'b00111110;
                character[4] = 8'b00111110;
                character[5] = 8'b00011100;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd004: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00011100;
                character[2] = 8'b00111110;
                character[3] = 8'b01111111;
                character[4] = 8'b00111110;
                character[5] = 8'b00011100;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd005: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00011100;
                character[2] = 8'b00101010;
                character[3] = 8'b01111111;
                character[4] = 8'b00101010;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd006: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00011100;
                character[2] = 8'b00111110;
                character[3] = 8'b01111111;
                character[4] = 8'b01101011;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd007: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00001000;
                character[3] = 8'b00011100;
                character[4] = 8'b00001000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd008: begin
                character[0] = 8'b01111111;
                character[1] = 8'b01100011;
                character[2] = 8'b01000001;
                character[3] = 8'b01000001;
                character[4] = 8'b01000001;
                character[5] = 8'b01100011;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd009: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00011100;
                character[2] = 8'b00100010;
                character[3] = 8'b00100010;
                character[4] = 8'b00100010;
                character[5] = 8'b00011100;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd010: begin
                character[0] = 8'b01111111;
                character[1] = 8'b01100011;
                character[2] = 8'b01011101;
                character[3] = 8'b01011101;
                character[4] = 8'b01011101;
                character[5] = 8'b01100011;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd011: begin
                character[0] = 8'b00011111;
                character[1] = 8'b00000011;
                character[2] = 8'b00000101;
                character[3] = 8'b00111000;
                character[4] = 8'b01001000;
                character[5] = 8'b01001000;
                character[6] = 8'b00110000;
                character[7] = 8'b00000000;
            end
            8'd012: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00100010;
                character[2] = 8'b00100010;
                character[3] = 8'b00011100;
                character[4] = 8'b00001000;
                character[5] = 8'b00111110;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd013: begin
                character[0] = 8'b00001110;
                character[1] = 8'b00001011;
                character[2] = 8'b00001001;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b01111000;
                character[6] = 8'b01111000;
                character[7] = 8'b00000000;
            end
            8'd014: begin
                character[0] = 8'b00001111;
                character[1] = 8'b00011101;
                character[2] = 8'b00010001;
                character[3] = 8'b00010001;
                character[4] = 8'b00010111;
                character[5] = 8'b01110111;
                character[6] = 8'b011100000;
                character[7] = 8'b00000000;
            end
            8'd015: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00101010;
                character[2] = 8'b00010100;
                character[3] = 8'b01100011;
                character[4] = 8'b00010100;
                character[5] = 8'b00101010;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd016: begin
                character[0] = 8'b01000000;
                character[1] = 8'b01110000;
                character[2] = 8'b01111100;
                character[3] = 8'b01111111;
                character[4] = 8'b01111100;
                character[5] = 8'b01110000;
                character[6] = 8'b01000000;
                character[7] = 8'b00000000;
            end
            8'd017: begin
                character[0] = 8'b00000001;
                character[1] = 8'b00000111;
                character[2] = 8'b00011111;
                character[3] = 8'b01111111;
                character[4] = 8'b00011111;
                character[5] = 8'b00000111;
                character[6] = 8'b00000001;
                character[7] = 8'b00000000;
            end
            8'd018: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00011100;
                character[2] = 8'b00101010;
                character[3] = 8'b00001000;
                character[4] = 8'b00101010;
                character[5] = 8'b00011100;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd019: begin
                character[0] = 8'b01100110;
                character[1] = 8'b01100110;
                character[2] = 8'b01100110;
                character[3] = 8'b01100110;
                character[4] = 8'b01100110;
                character[5] = 8'b00000000;
                character[6] = 8'b01100110;
                character[7] = 8'b00000000;
            end
            8'd020: begin
                character[0] = 8'b00111111;
                character[1] = 8'b01111010;
                character[2] = 8'b00111010;
                character[3] = 8'b00001010;
                character[4] = 8'b00001010;
                character[5] = 8'b00001010;
                character[6] = 8'b00001010;
                character[7] = 8'b00000000;
            end
            8'd021: begin
                character[0] = 8'b00011110;
                character[1] = 8'b00100000;
                character[2] = 8'b00011100;
                character[3] = 8'b00100010;
                character[4] = 8'b00011100;
                character[5] = 8'b00000010;
                character[6] = 8'b00111100;
                character[7] = 8'b00000000;
            end
            8'd022: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b01111111;
                character[5] = 8'b01111111;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd023: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00011100;
                character[2] = 8'b00101010;
                character[3] = 8'b00001000;
                character[4] = 8'b00101010;
                character[5] = 8'b00011100;
                character[6] = 8'b00111110;
                character[7] = 8'b00000000;
            end
            8'd024: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00011100;
                character[2] = 8'b00101010;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd025: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b00101010;
                character[5] = 8'b00011100;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd026: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000100;
                character[2] = 8'b00000010;
                character[3] = 8'b01111111;
                character[4] = 8'b00000010;
                character[5] = 8'b00000100;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd027: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00010000;
                character[2] = 8'b00100000;
                character[3] = 8'b01111111;
                character[4] = 8'b00100000;
                character[5] = 8'b00010000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd028: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b01000000;
                character[5] = 8'b01000000;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd029: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00010100;
                character[2] = 8'b00100010;
                character[3] = 8'b01111111;
                character[4] = 8'b00100010;
                character[5] = 8'b00010100;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd030: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd031: begin
                character[0] = 8'b01111111;
                character[1] = 8'b01111111;
                character[2] = 8'b00111110;
                character[3] = 8'b00111110;
                character[4] = 8'b00011100;
                character[5] = 8'b00011100;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd032: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd033: begin
                character[0] = 8'b00011000;
                character[1] = 8'b00011000;
                character[2] = 8'b00011000;
                character[3] = 8'b00011000;
                character[4] = 8'b00000000;
                character[5] = 8'b00011000;
                character[6] = 8'b00011000;
                character[7] = 8'b00000000;
            end
            8'd034: begin
                character[0] = 8'b01100110;
                character[1] = 8'b01100110;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd035: begin
                character[0] = 8'b00010010;
                character[1] = 8'b00010010;
                character[2] = 8'b01111111;
                character[3] = 8'b00010010;
                character[4] = 8'b01111111;
                character[5] = 8'b00100100;
                character[6] = 8'b00100100;
                character[7] = 8'b00000000;
            end
            8'd036: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00111111;
                character[2] = 8'b01000000;
                character[3] = 8'b00111110;
                character[4] = 8'b00000001;
                character[5] = 8'b01111110;
                character[6] = 8'b00010100;
                character[7] = 8'b00000000;
            end
            8'd037: begin
                character[0] = 8'b00100001;
                character[1] = 8'b01010010;
                character[2] = 8'b00100100;
                character[3] = 8'b00001000;
                character[4] = 8'b00010010;
                character[5] = 8'b00100101;
                character[6] = 8'b01000010;
                character[7] = 8'b00000000;
            end
            8'd038: begin
                character[0] = 8'b00111000;
                character[1] = 8'b01000100;
                character[2] = 8'b01001000;
                character[3] = 8'b00110000;
                character[4] = 8'b01101001;
                character[5] = 8'b01000110;
                character[6] = 8'b00111101;
                character[7] = 8'b00000000;
            end
            8'd039: begin
                character[0] = 8'b00011000;
                character[1] = 8'b00011000;
                character[2] = 8'b00011000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd040: begin
                character[0] = 8'b00000100;
                character[1] = 8'b00001000;
                character[2] = 8'b00010000;
                character[3] = 8'b00010000;
                character[4] = 8'b00010000;
                character[5] = 8'b00001000;
                character[6] = 8'b00000100;
                character[7] = 8'b00000000;
            end
            8'd041: begin
                character[0] = 8'b00010000;
                character[1] = 8'b00001000;
                character[2] = 8'b00000100;
                character[3] = 8'b00000100;
                character[4] = 8'b00000100;
                character[5] = 8'b00001000;
                character[6] = 8'b00010000;
                character[7] = 8'b00000000;
            end
            8'd042: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00001000;
                character[2] = 8'b00101010;
                character[3] = 8'b00011100;
                character[4] = 8'b00010100;
                character[5] = 8'b00100010;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd043: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00111110;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd044: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00011000;
                character[6] = 8'b00011000;
                character[7] = 8'b00100000;
            end
            8'd045: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00111110;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd046: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00011000;
                character[6] = 8'b00011000;
                character[7] = 8'b00000000;
            end
            8'd047: begin
                character[0] = 8'b00000001;
                character[1] = 8'b00000010;
                character[2] = 8'b00000100;
                character[3] = 8'b00001000;
                character[4] = 8'b00010000;
                character[5] = 8'b00100000;
                character[6] = 8'b01000000;
                character[7] = 8'b00000000;
            end
            8'd048: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00100010;
                character[2] = 8'b01000011;
                character[3] = 8'b01000101;
                character[4] = 8'b01001001;
                character[5] = 8'b01010001;
                character[6] = 8'b00100010;
                character[7] = 8'b00011100;
            end
            8'd049: begin
                character[0] = 8'b00011000;
                character[1] = 8'b00011000;
                character[2] = 8'b00101000;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00111110;
                character[7] = 8'b00000000;
            end
            8'd050: begin
                character[0] = 8'b00111100;
                character[1] = 8'b01000010;
                character[2] = 8'b00000001;
                character[3] = 8'b00000010;
                character[4] = 8'b00001100;
                character[5] = 8'b00110000;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd051: begin
                character[0] = 8'b00111110;
                character[1] = 8'b01000001;
                character[2] = 8'b00000001;
                character[3] = 8'b00001110;
                character[4] = 8'b00000001;
                character[5] = 8'b01000001;
                character[6] = 8'b00111110;
                character[7] = 8'b00000000;
            end
            8'd052: begin
                character[0] = 8'b00000100;
                character[1] = 8'b00001100;
                character[2] = 8'b00010100;
                character[3] = 8'b00100100;
                character[4] = 8'b01000100;
                character[5] = 8'b01111111;
                character[6] = 8'b00000100;
                character[7] = 8'b00000000;
            end
            8'd053: begin
                character[0] = 8'b01111111;
                character[1] = 8'b01000000;
                character[2] = 8'b01000000;
                character[3] = 8'b01111110;
                character[4] = 8'b00000001;
                character[5] = 8'b01000001;
                character[6] = 8'b00111110;
                character[7] = 8'b00000000;
            end
            8'd054: begin
                character[0] = 8'b00111110;
                character[1] = 8'b01000001;
                character[2] = 8'b01000000;
                character[3] = 8'b01111110;
                character[4] = 8'b01000001;
                character[5] = 8'b01000001;
                character[6] = 8'b00111110;
                character[7] = 8'b00000000;
            end
            8'd055: begin
                character[0] = 8'b01111111;
                character[1] = 8'b00000001;
                character[2] = 8'b00000001;
                character[3] = 8'b00000001;
                character[4] = 8'b00000001;
                character[5] = 8'b00000001;
                character[6] = 8'b00000001;
                character[7] = 8'b00000000;
            end
            8'd056: begin
                character[0] = 8'b00111110;
                character[1] = 8'b01000001;
                character[2] = 8'b01000001;
                character[3] = 8'b00111110;
                character[4] = 8'b01000001;
                character[5] = 8'b01000001;
                character[6] = 8'b00111110;
                character[7] = 8'b00000000;
            end
            8'd057: begin
                character[0] = 8'b00111110;
                character[1] = 8'b01000001;
                character[2] = 8'b01000001;
                character[3] = 8'b00111111;
                character[4] = 8'b00000001;
                character[5] = 8'b00000001;
                character[6] = 8'b00000001;
                character[7] = 8'b00000000;
            end
            8'd058: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00011000;
                character[2] = 8'b00011000;
                character[3] = 8'b00000000;
                character[4] = 8'b00011000;
                character[5] = 8'b00011000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd059: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00011000;
                character[2] = 8'b00011000;
                character[3] = 8'b00000000;
                character[4] = 8'b00011000;
                character[5] = 8'b00001000;
                character[6] = 8'b00010000;
                character[7] = 8'b00000000;
            end
            8'd060: begin
                character[0] = 8'b00000011;
                character[1] = 8'b00001100;
                character[2] = 8'b00110000;
                character[3] = 8'b01000000;
                character[4] = 8'b00110000;
                character[5] = 8'b00001100;
                character[6] = 8'b00000011;
                character[7] = 8'b00000000;
            end
            8'd061: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01111111;
                character[3] = 8'b00000000;
                character[4] = 8'b01111111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd062: begin
                character[0] = 8'b01100000;
                character[1] = 8'b00011000;
                character[2] = 8'b00000110;
                character[3] = 8'b00000001;
                character[4] = 8'b00000110;
                character[5] = 8'b00011000;
                character[6] = 8'b01100000;
                character[7] = 8'b00000000;
            end
            8'd063: begin
                character[0] = 8'b00111110;
                character[1] = 8'b01000001;
                character[2] = 8'b00000110;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b00000000;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd064: begin
                character[0] = 8'b00011110;
                character[1] = 8'b00100001;
                character[2] = 8'b01001101;
                character[3] = 8'b01010101;
                character[4] = 8'b01010101;
                character[5] = 8'b01010101;
                character[6] = 8'b01001110;
                character[7] = 8'b00000000;
            end
            8'd065: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00010100;
                character[2] = 8'b00100010;
                character[3] = 8'b00100010;
                character[4] = 8'b01111111;
                character[5] = 8'b01000001;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd066: begin
                character[0] = 8'b01111100;
                character[1] = 8'b01000010;
                character[2] = 8'b01000010;
                character[3] = 8'b01111100;
                character[4] = 8'b01000010;
                character[5] = 8'b01000001;
                character[6] = 8'b01111110;
                character[7] = 8'b00000000;
            end
            8'd067: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00100011;
                character[2] = 8'b01000000;
                character[3] = 8'b01000000;
                character[4] = 8'b01000000;
                character[5] = 8'b00100011;
                character[6] = 8'b00011100;
                character[7] = 8'b00000000;
            end
            8'd068: begin
                character[0] = 8'b01111100;
                character[1] = 8'b00100010;
                character[2] = 8'b00100001;
                character[3] = 8'b00100001;
                character[4] = 8'b00100001;
                character[5] = 8'b00100010;
                character[6] = 8'b01111100;
                character[7] = 8'b00000000;
            end
            8'd069: begin
                character[0] = 8'b01111111;
                character[1] = 8'b01000000;
                character[2] = 8'b01000000;
                character[3] = 8'b01111110;
                character[4] = 8'b01000000;
                character[5] = 8'b01000000;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd070: begin
                character[0] = 8'b01111111;
                character[1] = 8'b01000000;
                character[2] = 8'b01000000;
                character[3] = 8'b01111110;
                character[4] = 8'b01000000;
                character[5] = 8'b01000000;
                character[6] = 8'b01000000;
                character[7] = 8'b00000000;
            end
            8'd071: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00100011;
                character[2] = 8'b01000000;
                character[3] = 8'b01001111;
                character[4] = 8'b01000011;
                character[5] = 8'b00100011;
                character[6] = 8'b00011100;
                character[7] = 8'b00000000;
            end
            8'd072: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01000001;
                character[2] = 8'b01000001;
                character[3] = 8'b01111111;
                character[4] = 8'b01000001;
                character[5] = 8'b01000001;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd073: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00011100;
                character[7] = 8'b00000000;
            end
            8'd074: begin
                character[0] = 8'b00000111;
                character[1] = 8'b00000010;
                character[2] = 8'b00000010;
                character[3] = 8'b00000010;
                character[4] = 8'b00000010;
                character[5] = 8'b01000010;
                character[6] = 8'b00111100;
                character[7] = 8'b00000000;
            end
            8'd075: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01000010;
                character[2] = 8'b01000100;
                character[3] = 8'b01111000;
                character[4] = 8'b01000100;
                character[5] = 8'b01000010;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd076: begin
                character[0] = 8'b01000000;
                character[1] = 8'b01000000;
                character[2] = 8'b01000000;
                character[3] = 8'b01000000;
                character[4] = 8'b01000000;
                character[5] = 8'b01000000;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd077: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01100011;
                character[2] = 8'b01010101;
                character[3] = 8'b01001001;
                character[4] = 8'b01000001;
                character[5] = 8'b01000001;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd078: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01100001;
                character[2] = 8'b01010001;
                character[3] = 8'b01001001;
                character[4] = 8'b01000101;
                character[5] = 8'b01000011;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd079: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00100010;
                character[2] = 8'b01000001;
                character[3] = 8'b01000001;
                character[4] = 8'b01000001;
                character[5] = 8'b00100010;
                character[6] = 8'b00011100;
                character[7] = 8'b00000000;
            end
            8'd080: begin
                character[0] = 8'b01111110;
                character[1] = 8'b01000001;
                character[2] = 8'b01000001;
                character[3] = 8'b01111110;
                character[4] = 8'b01000000;
                character[5] = 8'b01000000;
                character[6] = 8'b01000000;
                character[7] = 8'b00000000;
            end
            8'd081: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00100010;
                character[2] = 8'b01000001;
                character[3] = 8'b01001001;
                character[4] = 8'b01000101;
                character[5] = 8'b00100010;
                character[6] = 8'b00011101;
                character[7] = 8'b00000000;
            end
            8'd082: begin
                character[0] = 8'b01111110;
                character[1] = 8'b01000001;
                character[2] = 8'b01000001;
                character[3] = 8'b01111110;
                character[4] = 8'b01000100;
                character[5] = 8'b01000010;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd083: begin
                character[0] = 8'b00111110;
                character[1] = 8'b01000001;
                character[2] = 8'b01100000;
                character[3] = 8'b00011100;
                character[4] = 8'b00000011;
                character[5] = 8'b01000001;
                character[6] = 8'b00111110;
                character[7] = 8'b00000000;
            end
            8'd084: begin
                character[0] = 8'b01111111;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd085: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01000001;
                character[2] = 8'b01000001;
                character[3] = 8'b01000001;
                character[4] = 8'b01000001;
                character[5] = 8'b01000001;
                character[6] = 8'b00111110;
                character[7] = 8'b00000000;
            end
            8'd086: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01000001;
                character[2] = 8'b01000001;
                character[3] = 8'b00100010;
                character[4] = 8'b00100010;
                character[5] = 8'b00011100;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd087: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01001001;
                character[2] = 8'b01001001;
                character[3] = 8'b01001001;
                character[4] = 8'b01011101;
                character[5] = 8'b00111110;
                character[6] = 8'b00110110;
                character[7] = 8'b00000000;
            end
            8'd088: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01000001;
                character[2] = 8'b00100010;
                character[3] = 8'b00011100;
                character[4] = 8'b00100010;
                character[5] = 8'b01000001;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd089: begin
                character[0] = 8'b01000001;
                character[1] = 8'b01000001;
                character[2] = 8'b00100010;
                character[3] = 8'b00011100;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd090: begin
                character[0] = 8'b01111111;
                character[1] = 8'b00000010;
                character[2] = 8'b00000100;
                character[3] = 8'b00001000;
                character[4] = 8'b00010000;
                character[5] = 8'b00100000;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd091: begin
                character[0] = 8'b00111100;
                character[1] = 8'b00100000;
                character[2] = 8'b00100000;
                character[3] = 8'b00100000;
                character[4] = 8'b00100000;
                character[5] = 8'b00100000;
                character[6] = 8'b00111100;
                character[7] = 8'b00000000;
            end
            8'd092: begin
                character[0] = 8'b01000000;
                character[1] = 8'b00100000;
                character[2] = 8'b00010000;
                character[3] = 8'b00001000;
                character[4] = 8'b00000100;
                character[5] = 8'b00000010;
                character[6] = 8'b00000001;
                character[7] = 8'b00000000;
            end
            8'd093: begin
                character[0] = 8'b00111100;
                character[1] = 8'b00000100;
                character[2] = 8'b00000100;
                character[3] = 8'b00000100;
                character[4] = 8'b00000100;
                character[5] = 8'b00000100;
                character[6] = 8'b00111100;
                character[7] = 8'b00000000;
            end
            8'd094: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00010100;
                character[2] = 8'b00100010;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd095: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd096: begin
                character[0] = 8'b00110000;
                character[1] = 8'b00001100;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd097: begin
                character[0] = 8'b00111100;
                character[1] = 8'b01000010;
                character[2] = 8'b00000010;
                character[3] = 8'b00111110;
                character[4] = 8'b01000010;
                character[5] = 8'b01000010;
                character[6] = 8'b00111101;
                character[7] = 8'b00000000;
            end
            8'd098: begin
                character[0] = 8'b01000000;
                character[1] = 8'b01000000;
                character[2] = 8'b01000000;
                character[3] = 8'b01111110;
                character[4] = 8'b01000001;
                character[5] = 8'b01000001;
                character[6] = 8'b01111110;
                character[7] = 8'b00000000;
            end
            8'd099: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00111111;
                character[3] = 8'b01000000;
                character[4] = 8'b01000000;
                character[5] = 8'b01000000;
                character[6] = 8'b00111111;
                character[7] = 8'b00000000;
            end
            8'd100: begin
                character[0] = 8'b00000001;
                character[1] = 8'b00000001;
                character[2] = 8'b00000001;
                character[3] = 8'b00111111;
                character[4] = 8'b01000001;
                character[5] = 8'b01000001;
                character[6] = 8'b00111111;
                character[7] = 8'b00000000;
            end
            8'd101: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00111110;
                character[3] = 8'b01000001;
                character[4] = 8'b01111111;
                character[5] = 8'b01000000;
                character[6] = 8'b00111111;
                character[7] = 8'b00000000;
            end
            8'd102: begin
                character[0] = 8'b00001110;
                character[1] = 8'b00010001;
                character[2] = 8'b00010000;
                character[3] = 8'b01111100;
                character[4] = 8'b00010000;
                character[5] = 8'b00010000;
                character[6] = 8'b00010000;
                character[7] = 8'b00000000;
            end
            8'd103: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00111101;
                character[3] = 8'b01000011;
                character[4] = 8'b01000011;
                character[5] = 8'b00111101;
                character[6] = 8'b00000001;
                character[7] = 8'b00111110;
            end
            8'd104: begin
                character[0] = 8'b01000000;
                character[1] = 8'b01000000;
                character[2] = 8'b01000000;
                character[3] = 8'b01011110;
                character[4] = 8'b01100001;
                character[5] = 8'b01000001;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd105: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00010000;
                character[3] = 8'b00000000;
                character[4] = 8'b00010000;
                character[5] = 8'b00010000;
                character[6] = 8'b00010000;
                character[7] = 8'b00000000;
            end
            8'd106: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000010;
                character[2] = 8'b00000000;
                character[3] = 8'b00000010;
                character[4] = 8'b00000010;
                character[5] = 8'b00000010;
                character[6] = 8'b01000010;
                character[7] = 8'b00111100;
            end
            8'd107: begin
                character[0] = 8'b01000000;
                character[1] = 8'b01000000;
                character[2] = 8'b01000001;
                character[3] = 8'b01000110;
                character[4] = 8'b01011000;
                character[5] = 8'b01100110;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd108: begin
                character[0] = 8'b00011000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001100;
                character[7] = 8'b00000000;
            end
            8'd109: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b01010110;
                character[4] = 8'b01101001;
                character[5] = 8'b01001001;
                character[6] = 8'b01001001;
                character[7] = 8'b00000000;
            end
            8'd110: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b01011110;
                character[4] = 8'b01100001;
                character[5] = 8'b01000001;
                character[6] = 8'b01000001;
                character[7] = 8'b00000000;
            end
            8'd111: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00011100;
                character[3] = 8'b00100010;
                character[4] = 8'b01000001;
                character[5] = 8'b00100010;
                character[6] = 8'b00011100;
                character[7] = 8'b00000000;
            end
            8'd112: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01011100;
                character[3] = 8'b01100010;
                character[4] = 8'b01000001;
                character[5] = 8'b01100010;
                character[6] = 8'b01011100;
                character[7] = 8'b01000000;
            end
            8'd113: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00011101;
                character[3] = 8'b00100011;
                character[4] = 8'b01000001;
                character[5] = 8'b00100011;
                character[6] = 8'b00011101;
                character[7] = 8'b00000001;
            end
            8'd114: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01000110;
                character[3] = 8'b01011000;
                character[4] = 8'b01100000;
                character[5] = 8'b01000000;
                character[6] = 8'b01000000;
                character[7] = 8'b00000000;
            end
            8'd115: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00011110;
                character[3] = 8'b01100001;
                character[4] = 8'b00011100;
                character[5] = 8'b01000011;
                character[6] = 8'b00111100;
                character[7] = 8'b00000000;
            end
            8'd116: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00100000;
                character[3] = 8'b01111100;
                character[4] = 8'b00100000;
                character[5] = 8'b00100000;
                character[6] = 8'b00011110;
                character[7] = 8'b00000000;
            end
            8'd117: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01000010;
                character[3] = 8'b01000010;
                character[4] = 8'b01000010;
                character[5] = 8'b01000110;
                character[6] = 8'b00111010;
                character[7] = 8'b00000000;
            end
            8'd118: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01000001;
                character[3] = 8'b01000001;
                character[4] = 8'b00100010;
                character[5] = 8'b00010100;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd119: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01000001;
                character[3] = 8'b01000001;
                character[4] = 8'b00101010;
                character[5] = 8'b00101010;
                character[6] = 8'b00010100;
                character[7] = 8'b00000000;
            end
            8'd120: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01100011;
                character[3] = 8'b00010100;
                character[4] = 8'b00001000;
                character[5] = 8'b00010100;
                character[6] = 8'b01100011;
                character[7] = 8'b00000000;
            end
            8'd121: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01000001;
                character[3] = 8'b00100001;
                character[4] = 8'b00010010;
                character[5] = 8'b00001100;
                character[6] = 8'b00001000;
                character[7] = 8'b01110000;
            end
            8'd122: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b01111111;
                character[3] = 8'b00000010;
                character[4] = 8'b00001100;
                character[5] = 8'b00110000;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd123: begin
                character[0] = 8'b00001110;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00110000;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001110;
                character[7] = 8'b00000000;
            end
            8'd124: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd125: begin
                character[0] = 8'b00111000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00000110;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00111000;
                character[7] = 8'b00000000;
            end
            8'd126: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00110000;
                character[3] = 8'b01001001;
                character[4] = 8'b00000110;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd127: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00010100;
                character[2] = 8'b00100010;
                character[3] = 8'b01000001;
                character[4] = 8'b01000001;
                character[5] = 8'b01000001;
                character[6] = 8'b01111111;
                character[7] = 8'b00000000;
            end
            8'd128: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd129: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd130: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd131: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd132: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd133: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd134: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd135: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd136: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd137: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd138: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd139: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd140: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd141: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd142: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd143: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd144: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd145: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd146: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd147: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd148: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd149: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd150: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd151: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd152: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd153: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd154: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd155: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00111110;
                character[2] = 8'b01000001;
                character[3] = 8'b01000000;
                character[4] = 8'b01000001;
                character[5] = 8'b00111110;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd156: begin
                character[0] = 8'b00011100;
                character[1] = 8'b00100010;
                character[2] = 8'b01111000;
                character[3] = 8'b00100000;
                character[4] = 8'b00100000;
                character[5] = 8'b00100001;
                character[6] = 8'b01111110;
                character[7] = 8'b00000000;
            end
            8'd157: begin
                character[0] = 8'b01000001;
                character[1] = 8'b00100010;
                character[2] = 8'b00010100;
                character[3] = 8'b01111111;
                character[4] = 8'b00001000;
                character[5] = 8'b01111111;
                character[6] = 8'b00001000;
                character[7] = 8'b00000000;
            end
            8'd158: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd159: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd160: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd161: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd162: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd163: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd164: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd165: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd166: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd167: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd168: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd169: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd170: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd171: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd172: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd173: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd174: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd175: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd176: begin
                character[0] = 8'b00010001;
                character[1] = 8'b01000100;
                character[2] = 8'b00010001;
                character[3] = 8'b01000100;
                character[4] = 8'b00010001;
                character[5] = 8'b01000100;
                character[6] = 8'b00010001;
                character[7] = 8'b01000100;
            end
            8'd177: begin
                character[0] = 8'b01010101;
                character[1] = 8'b10101010;
                character[2] = 8'b01010101;
                character[3] = 8'b10101010;
                character[4] = 8'b01010101;
                character[5] = 8'b10101010;
                character[6] = 8'b01010101;
                character[7] = 8'b10101010;
            end
            8'd178: begin
                character[0] = 8'b01110111;
                character[1] = 8'b11101110;
                character[2] = 8'b11011101;
                character[3] = 8'b10111011;
                character[4] = 8'b01110111;
                character[5] = 8'b11101110;
                character[6] = 8'b11011101;
                character[7] = 8'b10111011;
            end
            8'd179: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd180: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b11111000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd181: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b11111000;
                character[3] = 8'b00001000;
                character[4] = 8'b11111000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd182: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010100;
                character[3] = 8'b00010100;
                character[4] = 8'b11110100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd183: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b11111100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd184: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b11111000;
                character[3] = 8'b00001000;
                character[4] = 8'b11111000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd185: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b11110100;
                character[3] = 8'b00000100;
                character[4] = 8'b11110100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd186: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010100;
                character[3] = 8'b00010100;
                character[4] = 8'b00010100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd187: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b11111100;
                character[3] = 8'b00000100;
                character[4] = 8'b11110100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd188: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b11110100;
                character[3] = 8'b00000100;
                character[4] = 8'b11111100;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd189: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010100;
                character[3] = 8'b00010100;
                character[4] = 8'b11111100;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd190: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b11111000;
                character[3] = 8'b00001000;
                character[4] = 8'b11111000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd191: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00111000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd192: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b00001111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd193: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b11111111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd194: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b11111111;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd195: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b00001111;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd196: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b11111111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd197: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b00001000;
                character[4] = 8'b11111111;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd198: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001111;
                character[3] = 8'b00001000;
                character[4] = 8'b00001111;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd199: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010100;
                character[3] = 8'b00010111;
                character[4] = 8'b00010100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd200: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010111;
                character[3] = 8'b00010000;
                character[4] = 8'b00011111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd201: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00011111;
                character[3] = 8'b00010000;
                character[4] = 8'b00010111;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd202: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b11110111;
                character[3] = 8'b00000000;
                character[4] = 8'b11111111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd203: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b11111111;
                character[3] = 8'b00000000;
                character[4] = 8'b11110111;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd204: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010111;
                character[3] = 8'b00010000;
                character[4] = 8'b00010111;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd205: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b11111111;
                character[3] = 8'b00000000;
                character[4] = 8'b11111111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd206: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b11110111;
                character[3] = 8'b00000000;
                character[4] = 8'b11110111;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd207: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b11111111;
                character[3] = 8'b00000000;
                character[4] = 8'b11111111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd208: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010100;
                character[3] = 8'b11111111;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd209: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b11111111;
                character[3] = 8'b00000000;
                character[4] = 8'b11111111;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd210: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b11111111;
                character[4] = 8'b00010100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd211: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010100;
                character[3] = 8'b00011111;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd212: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001111;
                character[3] = 8'b00001000;
                character[4] = 8'b00001111;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd213: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00001111;
                character[3] = 8'b00001000;
                character[4] = 8'b00001111;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd214: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00011111;
                character[3] = 8'b00010100;
                character[4] = 8'b00010100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd215: begin
                character[0] = 8'b00010100;
                character[1] = 8'b00010100;
                character[2] = 8'b00010100;
                character[3] = 8'b11111111;
                character[4] = 8'b00010100;
                character[5] = 8'b00010100;
                character[6] = 8'b00010100;
                character[7] = 8'b00010100;
            end
            8'd216: begin
                character[0] = 8'b00001000;
                character[1] = 8'b00001000;
                character[2] = 8'b00001000;
                character[3] = 8'b11111000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd217: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00001111;
                character[4] = 8'b00001000;
                character[5] = 8'b00001000;
                character[6] = 8'b00001000;
                character[7] = 8'b00001000;
            end
            8'd218: begin
                character[0] = 8'b11111111;
                character[1] = 8'b11111111;
                character[2] = 8'b11111111;
                character[3] = 8'b11111111;
                character[4] = 8'b11111111;
                character[5] = 8'b11111111;
                character[6] = 8'b11111111;
                character[7] = 8'b11111111;
            end
            8'd219: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b11111111;
                character[5] = 8'b11111111;
                character[6] = 8'b11111111;
                character[7] = 8'b11111111;
            end
            8'd220: begin
                character[0] = 8'b11110000;
                character[1] = 8'b11110000;
                character[2] = 8'b11110000;
                character[3] = 8'b11110000;
                character[4] = 8'b11110000;
                character[5] = 8'b11110000;
                character[6] = 8'b11110000;
                character[7] = 8'b11110000;
            end
            8'd221: begin
                character[0] = 8'b00001111;
                character[1] = 8'b00001111;
                character[2] = 8'b00001111;
                character[3] = 8'b00001111;
                character[4] = 8'b00001111;
                character[5] = 8'b00001111;
                character[6] = 8'b00001111;
                character[7] = 8'b00001111;
            end
            8'd222: begin
                character[0] = 8'b11111111;
                character[1] = 8'b11111111;
                character[2] = 8'b11111111;
                character[3] = 8'b11111111;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd223: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd224: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd225: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd226: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd227: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd228: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd229: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd230: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd231: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd232: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd233: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd234: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd235: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd236: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd237: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd238: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd239: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd240: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd241: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd242: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd243: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd244: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd245: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd246: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd247: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd248: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd249: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd250: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd251: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd252: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd253: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd254: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00111110;
                character[2] = 8'b00111110;
                character[3] = 8'b00111110;
                character[4] = 8'b00111110;
                character[5] = 8'b00111110;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            8'd255: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
            default: begin
                character[0] = 8'b00000000;
                character[1] = 8'b00000000;
                character[2] = 8'b00000000;
                character[3] = 8'b00000000;
                character[4] = 8'b00000000;
                character[5] = 8'b00000000;
                character[6] = 8'b00000000;
                character[7] = 8'b00000000;
            end
        endcase
    end

    assign char_line_out = character[char_line_number];

endmodule

