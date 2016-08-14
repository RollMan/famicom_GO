/*
 Produced by NSL Core(version=20140126), IP ARCH, Inc. Sun Aug 14 21:25:23 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module sweep ( p_reset , m_clock , e , p , n , s , lencntr , timer_input , period , reset , set_param , exec , silent );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input e;
  wire e;
  input [2:0] p;
  wire [2:0] p;
  input n;
  wire n;
  input [2:0] s;
  wire [2:0] s;
  input [3:0] lencntr;
  wire [3:0] lencntr;
  input [10:0] timer_input;
  wire [10:0] timer_input;
  output [10:0] period;
  wire [10:0] period;
  input reset;
  wire reset;
  input set_param;
  wire set_param;
  input exec;
  wire exec;
  output silent;
  wire silent;
  reg e_r;
  reg [2:0] p_r;
  reg n_r;
  reg [2:0] s_r;
  reg [10:0] period_r;
  wire _net_0;
  wire _net_1;
  wire _net_2;
  wire _net_3;

   assign  _net_0 = (lencntr==4'b0000);
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(exec)? 
// synthesis translate_on
// synopsys translate_on
((exec)?(e==1'b1):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
((exec&_net_1))? 
// synthesis translate_on
// synopsys translate_on
(((exec&_net_1))?(n==1'b0):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
((exec&_net_1))? 
// synthesis translate_on
// synopsys translate_on
(((exec&_net_1))?(n==1'b1):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  period = period_r;

// synthesis translate_off
// synopsys translate_off
always @(posedge silent)
  begin
#1 if (silent===1'bx)
 begin
$display("Warning: control hazard(sweep:silent) at %d",$time);
 end
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 24 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  silent = _net_0;
always @(posedge m_clock)
  begin
if (set_param)
      e_r <= e;
end
always @(posedge m_clock)
  begin
if (set_param)
      p_r <= p;
end
always @(posedge m_clock)
  begin
if (set_param)
      n_r <= n;
end
always @(posedge m_clock)
  begin
if (set_param)
      s_r <= s;
end
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((((exec&_net_1)&_net_3)&((exec&_net_1)&_net_2))|((((exec&_net_1)&_net_3)|((exec&_net_1)&_net_2))&reset)))   period_r <= 11'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((exec&_net_1)&_net_3))
      period_r <= (period_r+(~(period_r>>s)));
else if (((exec&_net_1)&_net_2))
      period_r <= (period_r+(period_r>>s));
else if (reset)
      period_r <= timer_input;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((exec&_net_1)&_net_3)|((exec&_net_1)&_net_2))|reset)==1'b1) ||
 (((((exec&_net_1)&_net_3)|((exec&_net_1)&_net_2))|reset)==1'b0) ) begin
 if (((((exec&_net_1)&_net_3)&((exec&_net_1)&_net_2))|((((exec&_net_1)&_net_3)|((exec&_net_1)&_net_2))&reset)))
 begin $display("Warning: assign collision(sweep:period_r) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(sweep:period_r) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule
/*
 Produced by NSL Core(version=20140126), IP ARCH, Inc. Sun Aug 14 21:25:23 2016
 Licensed to :EVALUATION USER
*/
