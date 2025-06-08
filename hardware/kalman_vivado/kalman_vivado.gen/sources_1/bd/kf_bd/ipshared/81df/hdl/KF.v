
`timescale 1 ns / 1 ps

	module KF #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32,

		// Parameters of Axi Slave Bus Interface S01_AXIS
		parameter integer C_S01_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready,

		// Ports of Axi Slave Bus Interface S01_AXIS
		input wire  s01_axis_aclk,
		input wire  s01_axis_aresetn,
		output wire  s01_axis_tready,
		input wire [C_S01_AXIS_TDATA_WIDTH-1 : 0] s01_axis_tdata,
		input wire [(C_S01_AXIS_TDATA_WIDTH/8)-1 : 0] s01_axis_tstrb,
		input wire  s01_axis_tlast,
		input wire  s01_axis_tvalid
	);
	
	// Kalman outputs to AXI master interface
	wire signed [191:0] x_out;
    wire signed [1151:0] P_out;
    wire [191:0] x_flat_in;
    
    // Kalman module inputs from AXI slave interface
    wire [1151:0] P_flat_in;
    wire [127:0]  z_flat_in;
    wire kalman_done; // Signal that Kalman output data is ready
    wire writes_done_in;
    wire start; 
	
	// Instantiate Kalman
	kalman kalman_inst (
        .clk(m00_axis_aclk),
        .rst(~m00_axis_aresetn),
        .size_state(6),
        .size_meas(4),
        .start(start),
        .x_flat(x_flat_in),
        .P_flat(P_flat_in),
        .z_flat(z_flat_in),
        .x_out(x_out),
        .P_out(P_out),
        .done(kalman_done)
    );
// Instantiation of Axi Bus Interface M00_AXIS
	KF_master_stream_v1_0_M00_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
	) KF_master_stream_v1_0_M00_AXIS_inst (
		.M_AXIS_ACLK(m00_axis_aclk),
		.M_AXIS_ARESETN(m00_axis_aresetn),
		.kalman_P_in_flat(P_out),
        .kalman_x_in_flat(x_out),
        .kalman_data_valid(kalman_done),
		.M_AXIS_TVALID(m00_axis_tvalid),
		.M_AXIS_TDATA(m00_axis_tdata),
		.M_AXIS_TSTRB(m00_axis_tstrb),
		.M_AXIS_TLAST(m00_axis_tlast),
		.M_AXIS_TREADY(m00_axis_tready)
	);

// Instantiation of Axi Bus Interface S01_AXIS
	KF_slave_stream_v1_0_S01_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S01_AXIS_TDATA_WIDTH)
	) KF_slave_stream_v1_0_S01_AXIS_inst (
	    .writes_done_out(start), //output
        .x_flat_out(x_flat_in),
        .P_flat_out(P_flat_in),
        .z_flat_out(z_flat_in),
		.S_AXIS_ACLK(s01_axis_aclk),
		.S_AXIS_ARESETN(s01_axis_aresetn),
		.S_AXIS_TREADY(s01_axis_tready),
		.S_AXIS_TDATA(s01_axis_tdata),
		.S_AXIS_TSTRB(s01_axis_tstrb),
		.S_AXIS_TLAST(s01_axis_tlast),
		.S_AXIS_TVALID(s01_axis_tvalid)
	);

	// Add user logic here

	// User logic ends

	endmodule