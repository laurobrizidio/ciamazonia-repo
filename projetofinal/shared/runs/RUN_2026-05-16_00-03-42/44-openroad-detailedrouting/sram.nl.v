module sram (clk,
    cs,
    data_in,
    data_out,
    data_out_bar,
    oe_n,
    we_n,
    col_addr,
    row_addr);
 input clk;
 input cs;
 input data_in;
 output data_out;
 output data_out_bar;
 input oe_n;
 input we_n;
 input [1:0] col_addr;
 input [1:0] row_addr;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire clknet_0_clk;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net8;
 wire net9;
 wire \memory[0] ;
 wire \memory[10] ;
 wire \memory[11] ;
 wire \memory[12] ;
 wire \memory[13] ;
 wire \memory[14] ;
 wire \memory[15] ;
 wire \memory[1] ;
 wire \memory[2] ;
 wire \memory[3] ;
 wire \memory[4] ;
 wire \memory[5] ;
 wire \memory[6] ;
 wire \memory[7] ;
 wire \memory[8] ;
 wire \memory[9] ;
 wire net5;
 wire net6;
 wire net7;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;

 sg13g2_nand2b_1 _064_ (.Y(_016_),
    .B(net15),
    .A_N(net14));
 sg13g2_nand2_1 _065_ (.Y(_017_),
    .A(net14),
    .B(net15));
 sg13g2_nand2b_1 _066_ (.Y(_018_),
    .B(net14),
    .A_N(net15));
 sg13g2_mux4_1 _067_ (.S0(net15),
    .A0(\memory[0] ),
    .A1(\memory[1] ),
    .A2(\memory[2] ),
    .A3(\memory[3] ),
    .S1(net14),
    .X(_019_));
 sg13g2_or2_1 _068_ (.X(_020_),
    .B(net5),
    .A(net6));
 sg13g2_nand2b_1 _069_ (.Y(_021_),
    .B(_019_),
    .A_N(_020_));
 sg13g2_mux4_1 _070_ (.S0(net15),
    .A0(\memory[8] ),
    .A1(\memory[9] ),
    .A2(\memory[10] ),
    .A3(\memory[11] ),
    .S1(net14),
    .X(_022_));
 sg13g2_nand2b_1 _071_ (.Y(_023_),
    .B(net6),
    .A_N(net5));
 sg13g2_nand2b_1 _072_ (.Y(_024_),
    .B(_022_),
    .A_N(_023_));
 sg13g2_mux4_1 _073_ (.S0(net15),
    .A0(\memory[12] ),
    .A1(\memory[13] ),
    .A2(\memory[14] ),
    .A3(\memory[15] ),
    .S1(net14),
    .X(_025_));
 sg13g2_nand2_1 _074_ (.Y(_026_),
    .A(net6),
    .B(net5));
 sg13g2_nand2b_1 _075_ (.Y(_027_),
    .B(_025_),
    .A_N(_026_));
 sg13g2_mux4_1 _076_ (.S0(net1),
    .A0(\memory[4] ),
    .A1(\memory[5] ),
    .A2(\memory[6] ),
    .A3(\memory[7] ),
    .S1(net2),
    .X(_028_));
 sg13g2_nand2b_1 _077_ (.Y(_029_),
    .B(net5),
    .A_N(net6));
 sg13g2_nand2b_1 _078_ (.Y(_030_),
    .B(_028_),
    .A_N(_029_));
 sg13g2_and4_1 _079_ (.A(_021_),
    .B(_024_),
    .C(_027_),
    .D(_030_),
    .X(net9));
 sg13g2_nand4_1 _080_ (.B(_024_),
    .C(_027_),
    .A(_021_),
    .Y(net8),
    .D(_030_));
 sg13g2_nand2b_1 _081_ (.Y(_031_),
    .B(net3),
    .A_N(net7));
 sg13g2_nor4_1 _082_ (.A(net14),
    .B(net15),
    .C(_020_),
    .D(net10),
    .Y(_032_));
 sg13g2_mux2_1 _083_ (.A0(net39),
    .A1(net12),
    .S(_032_),
    .X(_000_));
 sg13g2_nor3_1 _084_ (.A(_018_),
    .B(_023_),
    .C(net11),
    .Y(_033_));
 sg13g2_mux2_1 _085_ (.A0(net32),
    .A1(net12),
    .S(_033_),
    .X(_001_));
 sg13g2_nor3_1 _086_ (.A(_017_),
    .B(_023_),
    .C(net11),
    .Y(_034_));
 sg13g2_mux2_1 _087_ (.A0(net37),
    .A1(net12),
    .S(_034_),
    .X(_002_));
 sg13g2_nor4_1 _088_ (.A(net14),
    .B(net15),
    .C(_026_),
    .D(net10),
    .Y(_035_));
 sg13g2_mux2_1 _089_ (.A0(net36),
    .A1(net13),
    .S(_035_),
    .X(_003_));
 sg13g2_nor3_1 _090_ (.A(_016_),
    .B(_026_),
    .C(net10),
    .Y(_036_));
 sg13g2_mux2_1 _091_ (.A0(net35),
    .A1(net13),
    .S(_036_),
    .X(_004_));
 sg13g2_nor3_1 _092_ (.A(_018_),
    .B(_026_),
    .C(net10),
    .Y(_037_));
 sg13g2_mux2_1 _093_ (.A0(net41),
    .A1(net13),
    .S(_037_),
    .X(_005_));
 sg13g2_nor3_1 _094_ (.A(_017_),
    .B(_026_),
    .C(net10),
    .Y(_038_));
 sg13g2_mux2_1 _095_ (.A0(net38),
    .A1(net13),
    .S(_038_),
    .X(_006_));
 sg13g2_nor3_1 _096_ (.A(_016_),
    .B(_020_),
    .C(net10),
    .Y(_039_));
 sg13g2_mux2_1 _097_ (.A0(net31),
    .A1(net12),
    .S(_039_),
    .X(_007_));
 sg13g2_nor3_1 _098_ (.A(_018_),
    .B(_020_),
    .C(net10),
    .Y(_040_));
 sg13g2_mux2_1 _099_ (.A0(net34),
    .A1(net12),
    .S(_040_),
    .X(_008_));
 sg13g2_nor3_1 _100_ (.A(_017_),
    .B(_020_),
    .C(net10),
    .Y(_041_));
 sg13g2_mux2_1 _101_ (.A0(net45),
    .A1(net12),
    .S(_041_),
    .X(_009_));
 sg13g2_nor4_1 _102_ (.A(net2),
    .B(net1),
    .C(_029_),
    .D(net11),
    .Y(_042_));
 sg13g2_mux2_1 _103_ (.A0(net44),
    .A1(net13),
    .S(_042_),
    .X(_010_));
 sg13g2_nor3_1 _104_ (.A(_016_),
    .B(_029_),
    .C(net11),
    .Y(_043_));
 sg13g2_mux2_1 _105_ (.A0(net33),
    .A1(net13),
    .S(_043_),
    .X(_011_));
 sg13g2_nor3_1 _106_ (.A(_018_),
    .B(_029_),
    .C(net11),
    .Y(_044_));
 sg13g2_mux2_1 _107_ (.A0(net42),
    .A1(net13),
    .S(_044_),
    .X(_012_));
 sg13g2_nor3_1 _108_ (.A(_017_),
    .B(_029_),
    .C(net11),
    .Y(_045_));
 sg13g2_mux2_1 _109_ (.A0(net40),
    .A1(net13),
    .S(_045_),
    .X(_013_));
 sg13g2_nor4_1 _110_ (.A(net2),
    .B(net1),
    .C(_023_),
    .D(net11),
    .Y(_046_));
 sg13g2_mux2_1 _111_ (.A0(net46),
    .A1(net12),
    .S(_046_),
    .X(_014_));
 sg13g2_nor3_1 _112_ (.A(_016_),
    .B(_023_),
    .C(net11),
    .Y(_047_));
 sg13g2_mux2_1 _113_ (.A0(net43),
    .A1(net12),
    .S(_047_),
    .X(_015_));
 sg13g2_dfrbpq_1 _114_ (.RESET_B(net19),
    .D(_000_),
    .Q(\memory[0] ),
    .CLK(clknet_2_0__leaf_clk));
 sg13g2_tiehi _114__20 (.L_HI(net19));
 sg13g2_dfrbpq_1 _115_ (.RESET_B(net18),
    .D(_001_),
    .Q(\memory[10] ),
    .CLK(clknet_2_1__leaf_clk));
 sg13g2_tiehi _115__19 (.L_HI(net18));
 sg13g2_dfrbpq_1 _116_ (.RESET_B(net17),
    .D(_002_),
    .Q(\memory[11] ),
    .CLK(clknet_2_1__leaf_clk));
 sg13g2_tiehi _116__18 (.L_HI(net17));
 sg13g2_dfrbpq_1 _117_ (.RESET_B(net16),
    .D(_003_),
    .Q(\memory[12] ),
    .CLK(clknet_2_2__leaf_clk));
 sg13g2_tiehi _117__17 (.L_HI(net16));
 sg13g2_dfrbpq_1 _118_ (.RESET_B(net),
    .D(_004_),
    .Q(\memory[13] ),
    .CLK(clknet_2_2__leaf_clk));
 sg13g2_tiehi _118__16 (.L_HI(net));
 sg13g2_dfrbpq_1 _119_ (.RESET_B(net30),
    .D(_005_),
    .Q(\memory[14] ),
    .CLK(clknet_2_2__leaf_clk));
 sg13g2_tiehi _119__31 (.L_HI(net30));
 sg13g2_dfrbpq_1 _120_ (.RESET_B(net29),
    .D(_006_),
    .Q(\memory[15] ),
    .CLK(clknet_2_2__leaf_clk));
 sg13g2_tiehi _120__30 (.L_HI(net29));
 sg13g2_dfrbpq_1 _121_ (.RESET_B(net28),
    .D(_007_),
    .Q(\memory[1] ),
    .CLK(clknet_2_0__leaf_clk));
 sg13g2_tiehi _121__29 (.L_HI(net28));
 sg13g2_dfrbpq_1 _122_ (.RESET_B(net27),
    .D(_008_),
    .Q(\memory[2] ),
    .CLK(clknet_2_0__leaf_clk));
 sg13g2_tiehi _122__28 (.L_HI(net27));
 sg13g2_dfrbpq_1 _123_ (.RESET_B(net26),
    .D(_009_),
    .Q(\memory[3] ),
    .CLK(clknet_2_0__leaf_clk));
 sg13g2_tiehi _123__27 (.L_HI(net26));
 sg13g2_dfrbpq_1 _124_ (.RESET_B(net25),
    .D(_010_),
    .Q(\memory[4] ),
    .CLK(clknet_2_3__leaf_clk));
 sg13g2_tiehi _124__26 (.L_HI(net25));
 sg13g2_dfrbpq_1 _125_ (.RESET_B(net24),
    .D(_011_),
    .Q(\memory[5] ),
    .CLK(clknet_2_3__leaf_clk));
 sg13g2_tiehi _125__25 (.L_HI(net24));
 sg13g2_dfrbpq_1 _126_ (.RESET_B(net23),
    .D(_012_),
    .Q(\memory[6] ),
    .CLK(clknet_2_3__leaf_clk));
 sg13g2_tiehi _126__24 (.L_HI(net23));
 sg13g2_dfrbpq_1 _127_ (.RESET_B(net22),
    .D(_013_),
    .Q(\memory[7] ),
    .CLK(clknet_2_3__leaf_clk));
 sg13g2_tiehi _127__23 (.L_HI(net22));
 sg13g2_dfrbpq_1 _128_ (.RESET_B(net21),
    .D(_014_),
    .Q(\memory[8] ),
    .CLK(clknet_2_1__leaf_clk));
 sg13g2_tiehi _128__22 (.L_HI(net21));
 sg13g2_dfrbpq_1 _129_ (.RESET_B(net20),
    .D(_015_),
    .Q(\memory[9] ),
    .CLK(clknet_2_1__leaf_clk));
 sg13g2_tiehi _129__21 (.L_HI(net20));
 sg13g2_buf_16 clkbuf_0_clk (.X(clknet_0_clk),
    .A(clk));
 sg13g2_buf_16 clkbuf_2_0__f_clk (.X(clknet_2_0__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_2_1__f_clk (.X(clknet_2_1__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_2_2__f_clk (.X(clknet_2_2__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_2_3__f_clk (.X(clknet_2_3__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_1 fanout10 (.A(_031_),
    .X(net10));
 sg13g2_buf_1 fanout11 (.A(_031_),
    .X(net11));
 sg13g2_buf_1 fanout12 (.A(net4),
    .X(net12));
 sg13g2_buf_1 fanout13 (.A(net4),
    .X(net13));
 sg13g2_buf_1 fanout14 (.A(net2),
    .X(net14));
 sg13g2_buf_1 fanout15 (.A(net1),
    .X(net15));
 sg13g2_dlygate4sd3_1 hold32 (.A(\memory[1] ),
    .X(net31));
 sg13g2_dlygate4sd3_1 hold33 (.A(\memory[10] ),
    .X(net32));
 sg13g2_dlygate4sd3_1 hold34 (.A(\memory[5] ),
    .X(net33));
 sg13g2_dlygate4sd3_1 hold35 (.A(\memory[2] ),
    .X(net34));
 sg13g2_dlygate4sd3_1 hold36 (.A(\memory[13] ),
    .X(net35));
 sg13g2_dlygate4sd3_1 hold37 (.A(\memory[12] ),
    .X(net36));
 sg13g2_dlygate4sd3_1 hold38 (.A(\memory[11] ),
    .X(net37));
 sg13g2_dlygate4sd3_1 hold39 (.A(\memory[15] ),
    .X(net38));
 sg13g2_dlygate4sd3_1 hold40 (.A(\memory[0] ),
    .X(net39));
 sg13g2_dlygate4sd3_1 hold41 (.A(\memory[7] ),
    .X(net40));
 sg13g2_dlygate4sd3_1 hold42 (.A(\memory[14] ),
    .X(net41));
 sg13g2_dlygate4sd3_1 hold43 (.A(\memory[6] ),
    .X(net42));
 sg13g2_dlygate4sd3_1 hold44 (.A(\memory[9] ),
    .X(net43));
 sg13g2_dlygate4sd3_1 hold45 (.A(\memory[4] ),
    .X(net44));
 sg13g2_dlygate4sd3_1 hold46 (.A(\memory[3] ),
    .X(net45));
 sg13g2_dlygate4sd3_1 hold47 (.A(\memory[8] ),
    .X(net46));
 sg13g2_buf_1 input1 (.A(col_addr[0]),
    .X(net1));
 sg13g2_buf_1 input2 (.A(col_addr[1]),
    .X(net2));
 sg13g2_buf_1 input3 (.A(cs),
    .X(net3));
 sg13g2_buf_1 input4 (.A(data_in),
    .X(net4));
 sg13g2_buf_1 input5 (.A(row_addr[0]),
    .X(net5));
 sg13g2_buf_1 input6 (.A(row_addr[1]),
    .X(net6));
 sg13g2_buf_1 input7 (.A(we_n),
    .X(net7));
 sg13g2_buf_1 output8 (.A(net8),
    .X(data_out));
 sg13g2_buf_1 output9 (.A(net9),
    .X(data_out_bar));
endmodule
