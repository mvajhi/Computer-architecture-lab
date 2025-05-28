module ALU (
    input [31:0] a,
    input [31:0] b,
    input carry_in,
    input [3:0] opcode,
    output reg [31:0] result,
    output [3:0] status
);
    reg negative, zero, carry, overflow;

    // Assign status flags to the output bus    
    // Combinational logic for ALU operations
    always @(*) begin
        // Default values
        result = 32'b0;
        carry = 1'b0;
        overflow = 1'b0;

        case (opcode)
            4'b0001: begin // MOV: result = in2 (b)
                result = b;
                // No carry or overflow for MOV
            end
            4'b1001: begin // MVN: result = ~in2 (NOT b)
                result = ~b;
                // No carry or overflow for MVN
            end
            4'b0010: begin // ADD, LDR, STR: result = in1 + in2 (a + b)
                {carry, result} = a + b;
                overflow = (a[31] == b[31]) && (a[31] != result[31]);
            end
            4'b0011: begin // ADC: result = in1 + in2 + C (a + b + carry_in)
                {carry, result} = a + b + carry_in;
                // Overflow for signed addition with carry
                overflow = (a[31] == b[31]) && (a[31] != result[31]);
            end
            4'b0100: begin // SUB, CMP: result = in1 - in2 (a - b)
                {carry, result} = a + ~b + 1; // Two's complement subtraction
                // Invert carry for subtraction (carry = NOT borrow)
                carry = ~carry;
                // Overflow for signed subtraction: (a[31] != b[31]) && (a[31] != result[31])
                overflow = (a[31] != b[31]) && (a[31] != result[31]);
            end
            4'b0101: begin // SBC: result = in1 - in2 - ~C (a - b - ~carry_in)
                {carry, result} = (a + ~b) + carry_in; // Note: C=1 means no borrow
                // Invert carry for subtraction with borrow
                carry = ~carry;
                // Overflow for signed subtraction with borrow
                overflow = (a[31] != b[31]) && (a[31] != result[31]);
            end
            4'b0110: begin // AND, TST: result = in1 & in2 (a & b)
                result = a & b;
                // No carry or overflow for AND
            end
            4'b0111: begin // ORR: result = in1 | in2 (a | b)
                result = a | b;
                // No carry or overflow for OR
            end
            4'b1000: begin // EOR: result = in1 ^ in2 (a ^ b)
                result = a ^ b;
                // No carry or overflow for XOR
            end
            default: begin
                result = 32'b0; // Default to 0 for undefined opcodes (like B)
                carry = 1'b0;
                overflow = 1'b0;
            end
        endcase

        zero = (result == 32'b0);
        negative = result[31];
    end
    assign status = {negative, zero, carry, overflow};

endmodule

module val2_gen (
    input [31:0] val_rem,
    input [11:0] shift_op,
    input imm,
    input mem_access,
    output reg [31:0] result
);
    wire [7:0] imm_val = shift_op[7:0];
    wire [3:0] rotate_imm = shift_op[11:8];
    always @(*) begin
        if (mem_access == 1'b1) begin
            result = shift_op;
        end else if (imm == 1'b1) begin
            result = {{24'b0, imm_val},{24'b0, imm_val}} >> (rotate_imm * 2);
        end else begin
            case(imm_val[6:5])
               2'b00:
                  result = val_rem << (shift_op[11:7]);
               2'b01:
                  result = val_rem >> (shift_op[11:7]);
               2'b10:
                  result = val_rem >>> (shift_op[11:7]);
               2'b11:
                result = {{24'b0, val_rem},{24'b0, val_rem}} >> (shift_op[11:7]);
            endcase
        end
    end
endmodule


module exe_stage(
    input clk,
    input [3:0] exe_cmd,
    input mem_r_en,
    input mem_w_en,
    input carry_in,
    input [31:0] pc,
    input [31:0] val_rn,
    input [31:0] val_rm,
    input imm,
    input [11:0] shift_operand,
    input [23:0] signed_imm_24,
    output [31:0] alu_result,
    output [31:0] br_addr,
    output [3:0] status
);

    wire mem_access = mem_r_en || mem_w_en;

    wire [31:0] val_2;

    val2_gen vg (
        .val_rem(val_rm),
        .shift_op(shift_operand),
        .imm(imm),
        .mem_access(mem_access),
        .result(val_2)
    );
    
    wire [31:0] signed_imm_32 = {{8{signed_imm_24[23]}}, signed_imm_24};
    assign br_addr = pc + signed_imm_32;

    ALU alu (
        .a(val_rn),
        .b(val_2),
        .carry_in(carry_in),
        .opcode(exe_cmd),
        .result(alu_result),
        .status(status)
    );
endmodule