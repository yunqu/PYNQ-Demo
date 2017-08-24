`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: top
// Project: SEEED I2C Grove 
//////////////////////////////////////////////////////////////////////////////////

module top(
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    pg_clk,
    scl,
    pg_bit30,
    pmodJA,
    pmodJB,
    LED,
    seeed_gpio_tri_io,
    pb_input,
    ar_shield
    );
    
    inout [14:0]DDR_addr;
    inout [2:0]DDR_ba;
    inout DDR_cas_n;
    inout DDR_ck_n;
    inout DDR_ck_p;
    inout DDR_cke;
    inout DDR_cs_n;
    inout [3:0]DDR_dm;
    inout [31:0]DDR_dq;
    inout [3:0]DDR_dqs_n;
    inout [3:0]DDR_dqs_p;
    inout DDR_odt;
    inout DDR_ras_n;
    inout DDR_reset_n;
    inout DDR_we_n;
    inout FIXED_IO_ddr_vrn;
    inout FIXED_IO_ddr_vrp;
    inout [53:0]FIXED_IO_mio;
    inout FIXED_IO_ps_clk;
    inout FIXED_IO_ps_porb;
    inout FIXED_IO_ps_srstb;
    
    output pg_clk;
    output pg_bit30;    // input expecting flag
    inout [2:0]scl;
    inout [7:0]pmodJA;
    inout [7:0]pmodJB;
    inout [3:0] LED;
    inout [3:0]seeed_gpio_tri_io;
    inout [19:0] ar_shield;
    input [3:0] pb_input;
  
    wire [14:0]DDR_addr;
    wire [2:0]DDR_ba;
    wire DDR_cas_n;
    wire DDR_ck_n;
    wire DDR_ck_p;
    wire DDR_cke;
    wire DDR_cs_n;
    wire [3:0]DDR_dm;
    wire [31:0]DDR_dq;
    wire [3:0]DDR_dqs_n;
    wire [3:0]DDR_dqs_p;
    wire DDR_odt;
    wire DDR_ras_n;
    wire DDR_reset_n;
    wire DDR_we_n;
    wire FIXED_IO_ddr_vrn;
    wire FIXED_IO_ddr_vrp;
    wire [53:0]FIXED_IO_mio;
    wire FIXED_IO_ps_clk;
    wire FIXED_IO_ps_porb;
    wire FIXED_IO_ps_srstb;
      
    wire pg_clk;
    wire [2:0]pg_scl;
    wire [2:0]scl;
    wire [3:0] LED;
    wire [7:0]pmodJA;
    wire [7:0]pmodJB;
    wire [19:0] ar_shield;

    wire [3:0]cfg2led;
    wire [3:0]pb_in;
    wire [7:0]pmodJA_data_in;
    wire [7:0]pmodJA_data_out;
    wire [7:0]pmodJA_tri_out;
    wire [7:0]pmodJB_data_in;
    wire [7:0]pmodJB_data_out;
    wire [7:0]pmodJB_tri_out;
    wire [0:0]seeed_gpio_tri_i_0;
    wire [1:1]seeed_gpio_tri_i_1;
    wire [2:2]seeed_gpio_tri_i_2;
    wire [3:3]seeed_gpio_tri_i_3;
    wire [0:0]seeed_gpio_tri_io_0;
    wire [1:1]seeed_gpio_tri_io_1;
    wire [2:2]seeed_gpio_tri_io_2;
    wire [3:3]seeed_gpio_tri_io_3;
    wire [0:0]seeed_gpio_tri_o_0;
    wire [1:1]seeed_gpio_tri_o_1;
    wire [2:2]seeed_gpio_tri_o_2;
    wire [3:3]seeed_gpio_tri_o_3;
    wire [0:0]seeed_gpio_tri_t_0;
    wire [1:1]seeed_gpio_tri_t_1;
    wire [2:2]seeed_gpio_tri_t_2;
    wire [3:3]seeed_gpio_tri_t_3;
    wire [19:0]arduino_data_i;
    wire [19:0]arduino_data_o;
    wire [19:0]arduino_tri_o;

   // LED related iobufs
    IOBUF led_ins_0
         (.I(cfg2led[0]),
          .IO(LED[0]),
          .O(),                                 // for LED data is not sent back to the cfglut 
          .T(1'b0));

    IOBUF led_ins_1
         (.I(cfg2led[1]),
          .IO(LED[1]),
          .O(),                                 // for LED data is not sent back to the cfglut 
          .T(1'b0));

    IOBUF led_ins_2
         (.I(cfg2led[2]),
          .IO(LED[2]),
          .O(),                                 // for LED data is not sent back to the cfglut 
          .T(1'b0));

    IOBUF led_ins_3
         (.I(cfg2led[3]),
          .IO(LED[3]),
          .O(),                                 // for LED data is not sent back to the cfglut 
          .T(1'b0));

// Seeed Tester related iobufs
    IOBUF seeed_gpio_tri_iobuf_0
         (.I(seeed_gpio_tri_o_0),
          .IO(seeed_gpio_tri_io[0]),
          .O(seeed_gpio_tri_i_0),
          .T(seeed_gpio_tri_t_0));
    IOBUF seeed_gpio_tri_iobuf_1
         (.I(seeed_gpio_tri_o_1),
          .IO(seeed_gpio_tri_io[1]),
          .O(seeed_gpio_tri_i_1),
          .T(seeed_gpio_tri_t_1));
    IOBUF seeed_gpio_tri_iobuf_2
         (.I(seeed_gpio_tri_o_2),
          .IO(seeed_gpio_tri_io[2]),
          .O(seeed_gpio_tri_i_2),
          .T(seeed_gpio_tri_t_2));
    IOBUF seeed_gpio_tri_iobuf_3
         (.I(seeed_gpio_tri_o_3),
          .IO(seeed_gpio_tri_io[3]),
          .O(seeed_gpio_tri_i_3),
          .T(seeed_gpio_tri_t_3));
    
// pmodJB related iobufs
    genvar i;
    generate
        for (i=0; i < 8; i=i+1)
        begin: pmodJB_iobuf
            IOBUF pmodJB_data_iobuf_i(
                .I(pmodJB_data_out[i]), 
                .IO(pmodJB[i]), 
                .O(pmodJB_data_in[i]), 
                .T(pmodJB_tri_out[i]) 
                );
        end
    endgenerate

// pmodJA related iobufs
    generate
    for (i=0; i < 8; i=i+1)
    begin: pmodJA_iobuf
        IOBUF pmodJA_data_iobuf_i(
            .I(pmodJA_data_out[i]), 
            .IO(pmodJA[i]), 
            .O(pmodJA_data_in[i]), 
            .T(pmodJA_tri_out[i]) 
            );
    end
    endgenerate

// Arduino shield related iobufs
    generate
        for (i=0; i < 20; i=i+1)
        begin: shield_ar
            IOBUF shield_ar_i(
                .I(1'b0),  // sw2ar_data_o
                .IO(ar_shield[i]), 
                .O(arduino_data_i[i]), 
                .T(arduino_data_o[i])  // we route data to the tri pins and tie logic 0 to .I port sw2ar_tri_o
                );
        end
    endgenerate

// scl related iobufs
    generate
        for (i=0; i < 3; i=i+1)
        begin: shield_scl
            IOBUF shield_scl_i(
                .I(1'b0),  // sw2ar_data_o
                .IO(scl[i]), 
                .O(), 
                .T(pg_scl[i])  // we route data to the tri pins and tie logic 0 to .I port sw2ar_tri_o
                );
        end
    endgenerate

    system system_i
         (
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),

        .pg_clk(pg_clk),
        .pg_scl(pg_scl[0]),
        .pg_scl1(pg_scl[1]),
        .pg_scl2(pg_scl[2]),
        .pg_bit30(pg_bit30),
        .arduino_data_i(arduino_data_i),
        .led(cfg2led),
        .pb_in(pb_input),
        .pmodJA_data_in(pmodJA_data_in),
        .pmodJA_data_out(pmodJA_data_out),
        .pmodJA_tri_out(pmodJA_tri_out),
        .pmodJB_data_in(pmodJB_data_in),
        .pmodJB_data_out(pmodJB_data_out),
        .pmodJB_tri_out(pmodJB_tri_out),
        .seeed_gpio_tri_i({seeed_gpio_tri_i_3,seeed_gpio_tri_i_2,seeed_gpio_tri_i_1,seeed_gpio_tri_i_0}),
        .seeed_gpio_tri_o({seeed_gpio_tri_o_3,seeed_gpio_tri_o_2,seeed_gpio_tri_o_1,seeed_gpio_tri_o_0}),
        .seeed_gpio_tri_t({seeed_gpio_tri_t_3,seeed_gpio_tri_t_2,seeed_gpio_tri_t_1,seeed_gpio_tri_t_0}),
        .arduino_data_o(arduino_data_o),
        .arduino_tri_o(arduino_tri_o)
        );
        
endmodule
