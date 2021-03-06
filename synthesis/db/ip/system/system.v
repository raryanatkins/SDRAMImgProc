// system.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module system (
		input  wire        clk_clk,                 //           clk.clk
		input  wire [24:0] interface_address,       //     interface.address
		input  wire [1:0]  interface_byteenable_n,  //              .byteenable_n
		input  wire        interface_chipselect,    //              .chipselect
		input  wire [15:0] interface_writedata,     //              .writedata
		input  wire        interface_read_n,        //              .read_n
		input  wire        interface_write_n,       //              .write_n
		output wire [15:0] interface_readdata,      //              .readdata
		output wire        interface_readdatavalid, //              .readdatavalid
		output wire        interface_waitrequest,   //              .waitrequest
		input  wire        reset_reset_n,           //         reset.reset_n
		output wire [12:0] sdram_addr,              //         sdram.addr
		output wire [1:0]  sdram_ba,                //              .ba
		output wire        sdram_cas_n,             //              .cas_n
		output wire        sdram_cke,               //              .cke
		output wire        sdram_cs_n,              //              .cs_n
		inout  wire [15:0] sdram_dq,                //              .dq
		output wire [1:0]  sdram_dqm,               //              .dqm
		output wire        sdram_ras_n,             //              .ras_n
		output wire        sdram_we_n,              //              .we_n
		output wire        sdram_clk_100_clk,       // sdram_clk_100.clk
		output wire        system_clock_clk,        //  system_clock.clk
		output wire        vga_clk_clk              //       vga_clk.clk
	);

	wire    rst_controller_reset_out_reset;     // rst_controller:reset_out -> altpll_0:reset
	wire    rst_controller_001_reset_out_reset; // rst_controller_001:reset_out -> new_sdram_controller_0:reset_n

	system_altpll_0 altpll_0 (
		.clk                (clk_clk),                        //       inclk_interface.clk
		.reset              (rst_controller_reset_out_reset), // inclk_interface_reset.reset
		.read               (),                               //             pll_slave.read
		.write              (),                               //                      .write
		.address            (),                               //                      .address
		.readdata           (),                               //                      .readdata
		.writedata          (),                               //                      .writedata
		.c0                 (system_clock_clk),               //                    c0.clk
		.c1                 (vga_clk_clk),                    //                    c1.clk
		.c2                 (sdram_clk_100_clk),              //                    c2.clk
		.scandone           (),                               //           (terminated)
		.scandataout        (),                               //           (terminated)
		.c3                 (),                               //           (terminated)
		.c4                 (),                               //           (terminated)
		.areset             (1'b0),                           //           (terminated)
		.locked             (),                               //           (terminated)
		.phasedone          (),                               //           (terminated)
		.phasecounterselect (3'b000),                         //           (terminated)
		.phaseupdown        (1'b0),                           //           (terminated)
		.phasestep          (1'b0),                           //           (terminated)
		.scanclk            (1'b0),                           //           (terminated)
		.scanclkena         (1'b0),                           //           (terminated)
		.scandata           (1'b0),                           //           (terminated)
		.configupdate       (1'b0)                            //           (terminated)
	);

	system_new_sdram_controller_0 new_sdram_controller_0 (
		.clk            (system_clock_clk),                    //   clk.clk
		.reset_n        (~rst_controller_001_reset_out_reset), // reset.reset_n
		.az_addr        (interface_address),                   //    s1.address
		.az_be_n        (interface_byteenable_n),              //      .byteenable_n
		.az_cs          (interface_chipselect),                //      .chipselect
		.az_data        (interface_writedata),                 //      .writedata
		.az_rd_n        (interface_read_n),                    //      .read_n
		.az_wr_n        (interface_write_n),                   //      .write_n
		.za_data        (interface_readdata),                  //      .readdata
		.za_valid       (interface_readdatavalid),             //      .readdatavalid
		.za_waitrequest (interface_waitrequest),               //      .waitrequest
		.zs_addr        (sdram_addr),                          //  wire.export
		.zs_ba          (sdram_ba),                            //      .export
		.zs_cas_n       (sdram_cas_n),                         //      .export
		.zs_cke         (sdram_cke),                           //      .export
		.zs_cs_n        (sdram_cs_n),                          //      .export
		.zs_dq          (sdram_dq),                            //      .export
		.zs_dqm         (sdram_dqm),                           //      .export
		.zs_ras_n       (sdram_ras_n),                         //      .export
		.zs_we_n        (sdram_we_n)                           //      .export
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (system_clock_clk),                   //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
