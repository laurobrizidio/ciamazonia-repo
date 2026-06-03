module sram (clk,
    cs,
    data_in,
    data_out,
    data_out_bar,
    oe_n,
    we_n,
    col_addr,
    row_addr,
    VPWR,
    VGND);
 input clk;
 input cs;
 input data_in;
 output data_out;
 output data_out_bar;
 input oe_n;
 input we_n;
 input [1:0] col_addr;
 input [1:0] row_addr;
 inout VPWR;
 inout VGND;

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
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
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

 sg13g2_nand2b_1 _064_ (.Y(_016_),
    .B(col_addr[0]),
    .A_N(col_addr[1]));
 sg13g2_nand2_1 _065_ (.Y(_017_),
    .A(col_addr[1]),
    .B(col_addr[0]));
 sg13g2_nand2b_1 _066_ (.Y(_018_),
    .B(col_addr[1]),
    .A_N(col_addr[0]));
 sg13g2_mux4_1 _067_ (.S0(col_addr[0]),
    .A0(\memory[0] ),
    .A1(\memory[1] ),
    .A2(\memory[2] ),
    .A3(\memory[3] ),
    .S1(col_addr[1]),
    .X(_019_));
 sg13g2_or2_1 _068_ (.X(_020_),
    .B(row_addr[0]),
    .A(row_addr[1]));
 sg13g2_nand2b_1 _069_ (.Y(_021_),
    .B(_019_),
    .A_N(_020_));
 sg13g2_mux4_1 _070_ (.S0(col_addr[0]),
    .A0(\memory[8] ),
    .A1(\memory[9] ),
    .A2(\memory[10] ),
    .A3(\memory[11] ),
    .S1(col_addr[1]),
    .X(_022_));
 sg13g2_nand2b_1 _071_ (.Y(_023_),
    .B(row_addr[1]),
    .A_N(row_addr[0]));
 sg13g2_nand2b_1 _072_ (.Y(_024_),
    .B(_022_),
    .A_N(_023_));
 sg13g2_mux4_1 _073_ (.S0(col_addr[0]),
    .A0(\memory[12] ),
    .A1(\memory[13] ),
    .A2(\memory[14] ),
    .A3(\memory[15] ),
    .S1(col_addr[1]),
    .X(_025_));
 sg13g2_nand2_1 _074_ (.Y(_026_),
    .A(row_addr[1]),
    .B(row_addr[0]));
 sg13g2_nand2b_1 _075_ (.Y(_027_),
    .B(_025_),
    .A_N(_026_));
 sg13g2_mux4_1 _076_ (.S0(col_addr[0]),
    .A0(\memory[4] ),
    .A1(\memory[5] ),
    .A2(\memory[6] ),
    .A3(\memory[7] ),
    .S1(col_addr[1]),
    .X(_028_));
 sg13g2_nand2b_1 _077_ (.Y(_029_),
    .B(row_addr[0]),
    .A_N(row_addr[1]));
 sg13g2_nand2b_1 _078_ (.Y(_030_),
    .B(_028_),
    .A_N(_029_));
 sg13g2_and4_1 _079_ (.A(_021_),
    .B(_024_),
    .C(_027_),
    .D(_030_),
    .X(data_out_bar));
 sg13g2_nand4_1 _080_ (.B(_024_),
    .C(_027_),
    .A(_021_),
    .Y(data_out),
    .D(_030_));
 sg13g2_nand2b_1 _081_ (.Y(_031_),
    .B(cs),
    .A_N(we_n));
 sg13g2_nor4_1 _082_ (.A(col_addr[1]),
    .B(col_addr[0]),
    .C(_020_),
    .D(_031_),
    .Y(_032_));
 sg13g2_mux2_1 _083_ (.A0(\memory[0] ),
    .A1(data_in),
    .S(_032_),
    .X(_000_));
 sg13g2_nor3_1 _084_ (.A(_018_),
    .B(_023_),
    .C(_031_),
    .Y(_033_));
 sg13g2_mux2_1 _085_ (.A0(\memory[10] ),
    .A1(data_in),
    .S(_033_),
    .X(_001_));
 sg13g2_nor3_1 _086_ (.A(_017_),
    .B(_023_),
    .C(_031_),
    .Y(_034_));
 sg13g2_mux2_1 _087_ (.A0(\memory[11] ),
    .A1(data_in),
    .S(_034_),
    .X(_002_));
 sg13g2_nor4_1 _088_ (.A(col_addr[1]),
    .B(col_addr[0]),
    .C(_026_),
    .D(_031_),
    .Y(_035_));
 sg13g2_mux2_1 _089_ (.A0(\memory[12] ),
    .A1(data_in),
    .S(_035_),
    .X(_003_));
 sg13g2_nor3_1 _090_ (.A(_016_),
    .B(_026_),
    .C(_031_),
    .Y(_036_));
 sg13g2_mux2_1 _091_ (.A0(\memory[13] ),
    .A1(data_in),
    .S(_036_),
    .X(_004_));
 sg13g2_nor3_1 _092_ (.A(_018_),
    .B(_026_),
    .C(_031_),
    .Y(_037_));
 sg13g2_mux2_1 _093_ (.A0(\memory[14] ),
    .A1(data_in),
    .S(_037_),
    .X(_005_));
 sg13g2_nor3_1 _094_ (.A(_017_),
    .B(_026_),
    .C(_031_),
    .Y(_038_));
 sg13g2_mux2_1 _095_ (.A0(\memory[15] ),
    .A1(data_in),
    .S(_038_),
    .X(_006_));
 sg13g2_nor3_1 _096_ (.A(_016_),
    .B(_020_),
    .C(_031_),
    .Y(_039_));
 sg13g2_mux2_1 _097_ (.A0(\memory[1] ),
    .A1(data_in),
    .S(_039_),
    .X(_007_));
 sg13g2_nor3_1 _098_ (.A(_018_),
    .B(_020_),
    .C(_031_),
    .Y(_040_));
 sg13g2_mux2_1 _099_ (.A0(\memory[2] ),
    .A1(data_in),
    .S(_040_),
    .X(_008_));
 sg13g2_nor3_1 _100_ (.A(_017_),
    .B(_020_),
    .C(_031_),
    .Y(_041_));
 sg13g2_mux2_1 _101_ (.A0(\memory[3] ),
    .A1(data_in),
    .S(_041_),
    .X(_009_));
 sg13g2_nor4_1 _102_ (.A(col_addr[1]),
    .B(col_addr[0]),
    .C(_029_),
    .D(_031_),
    .Y(_042_));
 sg13g2_mux2_1 _103_ (.A0(\memory[4] ),
    .A1(data_in),
    .S(_042_),
    .X(_010_));
 sg13g2_nor3_1 _104_ (.A(_016_),
    .B(_029_),
    .C(_031_),
    .Y(_043_));
 sg13g2_mux2_1 _105_ (.A0(\memory[5] ),
    .A1(data_in),
    .S(_043_),
    .X(_011_));
 sg13g2_nor3_1 _106_ (.A(_018_),
    .B(_029_),
    .C(_031_),
    .Y(_044_));
 sg13g2_mux2_1 _107_ (.A0(\memory[6] ),
    .A1(data_in),
    .S(_044_),
    .X(_012_));
 sg13g2_nor3_1 _108_ (.A(_017_),
    .B(_029_),
    .C(_031_),
    .Y(_045_));
 sg13g2_mux2_1 _109_ (.A0(\memory[7] ),
    .A1(data_in),
    .S(_045_),
    .X(_013_));
 sg13g2_nor4_1 _110_ (.A(col_addr[1]),
    .B(col_addr[0]),
    .C(_023_),
    .D(_031_),
    .Y(_046_));
 sg13g2_mux2_1 _111_ (.A0(\memory[8] ),
    .A1(data_in),
    .S(_046_),
    .X(_014_));
 sg13g2_nor3_1 _112_ (.A(_016_),
    .B(_023_),
    .C(_031_),
    .Y(_047_));
 sg13g2_mux2_1 _113_ (.A0(\memory[9] ),
    .A1(data_in),
    .S(_047_),
    .X(_015_));
 sg13g2_dfrbpq_1 _114_ (.RESET_B(_052_),
    .D(_000_),
    .Q(\memory[0] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _115_ (.RESET_B(_051_),
    .D(_001_),
    .Q(\memory[10] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _116_ (.RESET_B(_050_),
    .D(_002_),
    .Q(\memory[11] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _117_ (.RESET_B(_049_),
    .D(_003_),
    .Q(\memory[12] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _118_ (.RESET_B(_048_),
    .D(_004_),
    .Q(\memory[13] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _119_ (.RESET_B(_063_),
    .D(_005_),
    .Q(\memory[14] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _120_ (.RESET_B(_062_),
    .D(_006_),
    .Q(\memory[15] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _121_ (.RESET_B(_061_),
    .D(_007_),
    .Q(\memory[1] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _122_ (.RESET_B(_060_),
    .D(_008_),
    .Q(\memory[2] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _123_ (.RESET_B(_059_),
    .D(_009_),
    .Q(\memory[3] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _124_ (.RESET_B(_058_),
    .D(_010_),
    .Q(\memory[4] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _125_ (.RESET_B(_057_),
    .D(_011_),
    .Q(\memory[5] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _126_ (.RESET_B(_056_),
    .D(_012_),
    .Q(\memory[6] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _127_ (.RESET_B(_055_),
    .D(_013_),
    .Q(\memory[7] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _128_ (.RESET_B(_054_),
    .D(_014_),
    .Q(\memory[8] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _129_ (.RESET_B(_053_),
    .D(_015_),
    .Q(\memory[9] ),
    .CLK(clk));
 sg13g2_tiehi _130_ (.L_HI(_048_));
 sg13g2_tiehi _131_ (.L_HI(_049_));
 sg13g2_tiehi _132_ (.L_HI(_050_));
 sg13g2_tiehi _133_ (.L_HI(_051_));
 sg13g2_tiehi _134_ (.L_HI(_052_));
 sg13g2_tiehi _135_ (.L_HI(_053_));
 sg13g2_tiehi _136_ (.L_HI(_054_));
 sg13g2_tiehi _137_ (.L_HI(_055_));
 sg13g2_tiehi _138_ (.L_HI(_056_));
 sg13g2_tiehi _139_ (.L_HI(_057_));
 sg13g2_tiehi _140_ (.L_HI(_058_));
 sg13g2_tiehi _141_ (.L_HI(_059_));
 sg13g2_tiehi _142_ (.L_HI(_060_));
 sg13g2_tiehi _143_ (.L_HI(_061_));
 sg13g2_tiehi _144_ (.L_HI(_062_));
 sg13g2_tiehi _145_ (.L_HI(_063_));
endmodule
