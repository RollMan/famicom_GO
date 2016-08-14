/*
 Produced by NSL Core(version=20140126), IP ARCH, Inc. Mon Aug 15 00:33:42 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module sweep ( p_reset , m_clock , e , p , n , s , lencntr , timer_input , period , set , set_param , exec , silent , timer_set );
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
  input set;
  wire set;
  input set_param;
  wire set_param;
  input exec;
  wire exec;
  output silent;
  wire silent;
  output timer_set;
  wire timer_set;
  reg e_r;
  reg [2:0] p_r;
  reg n_r;
  reg [2:0] s_r;
  reg [11:0] period_r;
  reg [11:0] period_r2;
  reg [2:0] pp;
  wire _net_0;
  wire [10:0] _net_1;
  wire [10:0] _net_2;
  wire _net_3;
  wire _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  wire _net_8;
  wire _net_9;
  wire _net_10;
  wire _net_11;

   assign  _net_0 = ((period_r < 12'b000000001000)|(period_r > 12'b011111111111));
   assign  _net_1 = timer_input;
   assign  _net_2 = timer_input;
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
(exec)? 
// synthesis translate_on
// synopsys translate_on
((exec)?(pp==p_r):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
((exec&_net_3))? 
// synthesis translate_on
// synopsys translate_on
(((exec&_net_3))?(((e_r==1'b1)&(s_r != 3'b000))&(lencntr != 4'b0000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
(((exec&_net_3)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((exec&_net_3)&_net_4))?(s_r==3'b111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(((exec&_net_3)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((exec&_net_3)&_net_4))?(s_r==3'b110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(((exec&_net_3)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((exec&_net_3)&_net_4))?(s_r==3'b101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
(((exec&_net_3)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((exec&_net_3)&_net_4))?(s_r==3'b100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_9 = 
// synthesis translate_off
// synopsys translate_off
(((exec&_net_3)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((exec&_net_3)&_net_4))?(s_r==3'b011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
(((exec&_net_3)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((exec&_net_3)&_net_4))?(s_r==3'b010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_11 = 
// synthesis translate_off
// synopsys translate_off
(((exec&_net_3)&_net_4))? 
// synthesis translate_on
// synopsys translate_on
((((exec&_net_3)&_net_4))?(s_r==3'b001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  period = (period_r[10:0]);

// synthesis translate_off
// synopsys translate_off
always @(posedge silent)
  begin
#1 if (silent===1'bx)
 begin
$display("Warning: control hazard(sweep:silent) at %d",$time);
 end
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 10 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  silent = _net_0;

// synthesis translate_off
// synopsys translate_off
always @(posedge timer_set)
  begin
#1 if (timer_set===1'bx)
 begin
$display("Warning: control hazard(sweep:timer_set) at %d",$time);
 end
#1 if ((((exec&_net_3))===1'bx) || (1'b1)===1'bx) $display("hazard ((exec&_net_3) || 1'b1) line 53 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  timer_set = (exec&_net_3);
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
if (((((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))&((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))&((((exec&_net_3)&_net_4)&_net_10)&(~n_r))))|(((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_10)&n_r)))|((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))&((((exec&_net_3)&_net_4)&_net_9)&(~n_r))))|(((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_9)&n_r)))|((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))&((((exec&_net_3)&_net_4)&_net_8)&(~n_r))))|(((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_8)&n_r)))|((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))&((((exec&_net_3)&_net_4)&_net_7)&(~n_r))))|(((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_7)&n_r)))|((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))&((((exec&_net_3)&_net_4)&_net_6)&(~n_r))))|(((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_6)&n_r)))|((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_6)&n_r))&((((exec&_net_3)&_net_4)&_net_5)&(~n_r))))|(((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_6)&n_r))|((((exec&_net_3)&_net_4)&_net_5)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_5)&n_r)))|((((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_6)&n_r))|((((exec&_net_3)&_net_4)&_net_5)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_5)&n_r))&set)))   period_r <= 12'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((((exec&_net_3)&_net_4)&_net_11)&(~n_r)))
      period_r <= (period_r+(period_r2>>1));
else if (((((exec&_net_3)&_net_4)&_net_11)&n_r))
      period_r <= (period_r+(~(period_r2>>1)));
else if (((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))
      period_r <= (period_r+(period_r2>>2));
else if (((((exec&_net_3)&_net_4)&_net_10)&n_r))
      period_r <= (period_r+(~(period_r2>>2)));
else if (((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))
      period_r <= (period_r+(period_r2>>3));
else if (((((exec&_net_3)&_net_4)&_net_9)&n_r))
      period_r <= (period_r+(~(period_r2>>3)));
else if (((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))
      period_r <= (period_r+(period_r2>>4));
else if (((((exec&_net_3)&_net_4)&_net_8)&n_r))
      period_r <= (period_r+(~(period_r2>>4)));
else if (((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))
      period_r <= (period_r+(period_r2>>5));
else if (((((exec&_net_3)&_net_4)&_net_7)&n_r))
      period_r <= (period_r+(~(period_r2>>5)));
else if (((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))
      period_r <= (period_r+(period_r2>>6));
else if (((((exec&_net_3)&_net_4)&_net_6)&n_r))
      period_r <= (period_r+(~(period_r2>>6)));
else if (((((exec&_net_3)&_net_4)&_net_5)&(~n_r)))
      period_r <= (period_r+(period_r2>>7));
else if (((((exec&_net_3)&_net_4)&_net_5)&n_r))
      period_r <= (period_r+(~(period_r2>>7)));
else if (set)
      period_r <= ({1'b0,_net_1});
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_6)&n_r))|((((exec&_net_3)&_net_4)&_net_5)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_5)&n_r))|set)==1'b1) ||
 (((((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_6)&n_r))|((((exec&_net_3)&_net_4)&_net_5)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_5)&n_r))|set)==1'b0) ) begin
 if (((((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))&((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))&((((exec&_net_3)&_net_4)&_net_10)&(~n_r))))|(((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_10)&n_r)))|((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))&((((exec&_net_3)&_net_4)&_net_9)&(~n_r))))|(((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_9)&n_r)))|((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))&((((exec&_net_3)&_net_4)&_net_8)&(~n_r))))|(((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_8)&n_r)))|((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))&((((exec&_net_3)&_net_4)&_net_7)&(~n_r))))|(((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_7)&n_r)))|((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))&((((exec&_net_3)&_net_4)&_net_6)&(~n_r))))|(((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_6)&n_r)))|((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_6)&n_r))&((((exec&_net_3)&_net_4)&_net_5)&(~n_r))))|(((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_6)&n_r))|((((exec&_net_3)&_net_4)&_net_5)&(~n_r)))&((((exec&_net_3)&_net_4)&_net_5)&n_r)))|((((((((((((((((((exec&_net_3)&_net_4)&_net_11)&(~n_r))|((((exec&_net_3)&_net_4)&_net_11)&n_r))|((((exec&_net_3)&_net_4)&_net_10)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_10)&n_r))|((((exec&_net_3)&_net_4)&_net_9)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_9)&n_r))|((((exec&_net_3)&_net_4)&_net_8)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_8)&n_r))|((((exec&_net_3)&_net_4)&_net_7)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_7)&n_r))|((((exec&_net_3)&_net_4)&_net_6)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_6)&n_r))|((((exec&_net_3)&_net_4)&_net_5)&(~n_r)))|((((exec&_net_3)&_net_4)&_net_5)&n_r))&set)))
 begin $display("Warning: assign collision(sweep:period_r) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(sweep:period_r) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((exec&(~_net_3))&set))   period_r2 <= 12'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((exec&(~_net_3)))
      period_r2 <= period_r;
else if (set)
      period_r2 <= ({1'b0,_net_2});
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((exec&(~_net_3))|set)==1'b1) ||
 (((exec&(~_net_3))|set)==1'b0) ) begin
 if (((exec&(~_net_3))&set))
 begin $display("Warning: assign collision(sweep:period_r2) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(sweep:period_r2) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     pp <= 3'b000;
else 
// synthesis translate_off
// synopsys translate_off
if (((exec&(~_net_3))&(exec&_net_3)))   pp <= 3'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((exec&(~_net_3)))
      pp <= (pp+3'b001);
else if ((exec&_net_3))
      pp <= 3'b000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((exec&(~_net_3))|(exec&_net_3))==1'b1) ||
 (((exec&(~_net_3))|(exec&_net_3))==1'b0) ) begin
 if (((exec&(~_net_3))&(exec&_net_3)))
 begin $display("Warning: assign collision(sweep:pp) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(sweep:pp) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule
/*
 Produced by NSL Core(version=20140126), IP ARCH, Inc. Mon Aug 15 00:33:42 2016
 Licensed to :EVALUATION USER
*/
