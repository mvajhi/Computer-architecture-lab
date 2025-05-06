module instruction_decode_components (
    input[63:0] if_out,
    input[3:0] status,
    input hazard,
    output[3:0] rn,
    output[3:0] rm,
    output[3:0] mux_reg,
    output two_src,
    output wb_en,
    output mem_r_en,
    output mem_w_en,
    output [3:0] exe_cmd,
    output b,
    output s_out,
    output [31:0] pc_out,
    output [3:0] r1,
    output [3:0] r2,
    output imm,
    output [11:0] shift_op,
    output [23:0] signed_imm,
    output [3:0] dest,
    output carry_in
);
    wire [31:0] pc, instruction;
    assign instruction = if_out[31:0];
    assign pc = if_out[63:32];

    wire[3:0] cond = instruction[31:28];
    wire[1:0] mode = instruction[27:26];
    wire i = instruction[25];
    wire[3:0] opcode = instruction[24:21];
    wire s = instruction[20];
    assign rn = instruction[19:16];
    wire[3:0] rd = instruction[15:12];
    wire[4:0] shift_imm = instruction[11:7];
    wire[1:0] shift = instruction[6:5];
    assign rm = instruction[3:0];

    assign two_src = ~imm || mem_r_en;

    wire out_cc;
    condition_check cc (
        .cond(cond),
        .status(status),
        .out(out_cc)
    );

    wire [8:0] out_cu;
    control_unit cu (
        .s(s),
        .opcode(opcode),
        .mode(mode),
        .out(out_cu)
    );

    assign mux_reg = mem_w_en ? rd : rm;

    assign r1 = rn;
    assign r2 = mux_reg;

    wire sel_cu = ~out_cc || hazard;
    wire [8:0] mux_cu = sel_cu ? out_cu : 9'b0;

    assign wb_en = mux_cu[8];
    assign mem_r_en = out_cu[7];
    assign mem_w_en = mux_cu[6];
    assign exe_cmd = mux_cu[5:2];
    assign b = mux_cu[1];
    assign s_out = mux_cu[0];

    assign imm = i;
    assign shift_op = instruction[11:0];
    assign signed_imm = instruction[23:0];
    assign dest = rd;

    assign pc_out = pc;
    assign carry_in = status[1];
endmodule