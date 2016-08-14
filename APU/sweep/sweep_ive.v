
`timescale	1ns / 1ns
`default_nettype none

/*
 Produced by NSL Core(version=20140126), IP ARCH, Inc. Mon Aug 15 00:33:43 2016
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module sweep_ive ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  wire test;
  reg [9:0] cnt;
  wire _sw_e;
  wire [2:0] _sw_p;
  wire _sw_n;
  wire [2:0] _sw_s;
  wire [3:0] _sw_lencntr;
  wire [10:0] _sw_timer_input;
  wire [10:0] _sw_period;
  wire _sw_set;
  wire _sw_set_param;
  wire _sw_exec;
  wire _sw_silent;
  wire _sw_timer_set;
  wire _sw_p_reset;
  wire _sw_m_clock;
  wire _net_0;
  reg _reg_1;
  reg _reg_2;
  reg _reg_3;
  reg _reg_4;
  reg _reg_5;
  reg _reg_6;
  reg _reg_7;
  reg _reg_8;
  reg _reg_9;
  reg _reg_10;
  reg _reg_11;
  reg _reg_12;
  reg _reg_13;
  reg _reg_14;
  reg _reg_15;
  reg _reg_16;
  reg _reg_17;
  reg _reg_18;
  reg _reg_19;
  reg _reg_20;
  reg _reg_21;
  reg _reg_22;
  reg _reg_23;
  reg _reg_24;
  reg _reg_25;
sweep sw (.p_reset(_sw_p_reset), .m_clock(_sw_m_clock), .timer_set(_sw_timer_set), .silent(_sw_silent), .exec(_sw_exec), .set_param(_sw_set_param), .set(_sw_set), .period(_sw_period), .timer_input(_sw_timer_input), .lencntr(_sw_lencntr), .s(_sw_s), .n(_sw_n), .p(_sw_p), .e(_sw_e));

always @(posedge test)
  begin
#1 if (test===1'bx)
 begin
$display("Warning: control hazard(sweep_ive:test) at %d",$time);
 end
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 13 at %d\n",$time);
 end
   assign  test = _net_0;
   assign  _sw_e = ((test|_reg_25))? (test|_reg_25):1'bx;
   assign  _sw_p = ((test|_reg_25))? (((test|_reg_25))?3'b001:3'b0):3'bx;
   assign  _sw_n = ((test|_reg_25))? (((test|_reg_25))?1'b0:1'b0):1'bx;
   assign  _sw_s = ((test|_reg_25))? (((test|_reg_25))?3'b001:3'b0):3'bx;
   assign  _sw_lencntr = ((test|_reg_25))? (((test|_reg_25))?4'b1000:4'b0):4'bx;
always @(posedge m_clock or posedge p_reset)
  begin
if (((test|_reg_25)&_reg_23))
 begin $display("Warning: assign collision(sweep_ive:_sw_timer_input) at %d",$time);
if ((test|_reg_25)) $display("assert ((test|_reg_25)) line 27 at %d\n",$time);
if (_reg_23) $display("assert (_reg_23) line 31 at %d\n",$time);
 end
 end
   assign  _sw_timer_input = (((test|_reg_25)&_reg_23))? 11'bx :(((test|_reg_25)|_reg_23))? (((test|_reg_25))?11'b01011111101:11'b0)|
    ((_reg_23)?11'b01010111100:11'b0):11'bx;
always @(posedge _sw_set)
  begin
#1 if (_sw_set===1'bx)
 begin
$display("Warning: control hazard(sweep_ive:_sw_set) at %d",$time);
 end
#1 if ((((test|_reg_25))===1'bx) || (1'b1)===1'bx) $display("hazard ((test|_reg_25) || 1'b1) line 27 at %d\n",$time);
#1 if (((_reg_23)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_23 || 1'b1) line 31 at %d\n",$time);
 end
   assign  _sw_set = (test|_reg_25)|
    _reg_23;
always @(posedge _sw_set_param)
  begin
#1 if (_sw_set_param===1'bx)
 begin
$display("Warning: control hazard(sweep_ive:_sw_set_param) at %d",$time);
 end
#1 if ((((test|_reg_25))===1'bx) || (1'b1)===1'bx) $display("hazard ((test|_reg_25) || 1'b1) line 28 at %d\n",$time);
 end
   assign  _sw_set_param = (test|_reg_25);
always @(posedge _sw_exec)
  begin
#1 if (_sw_exec===1'bx)
 begin
$display("Warning: control hazard(sweep_ive:_sw_exec) at %d",$time);
 end
#1 if (((_reg_21)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_21 || 1'b1) line 33 at %d\n",$time);
#1 if (((_reg_19)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_19 || 1'b1) line 35 at %d\n",$time);
#1 if (((_reg_17)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_17 || 1'b1) line 37 at %d\n",$time);
#1 if (((_reg_15)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_15 || 1'b1) line 39 at %d\n",$time);
#1 if (((_reg_13)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_13 || 1'b1) line 41 at %d\n",$time);
#1 if (((_reg_11)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_11 || 1'b1) line 43 at %d\n",$time);
#1 if (((_reg_9)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_9 || 1'b1) line 45 at %d\n",$time);
#1 if (((_reg_7)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_7 || 1'b1) line 47 at %d\n",$time);
#1 if (((_reg_5)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_5 || 1'b1) line 49 at %d\n",$time);
#1 if (((_reg_3)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_3 || 1'b1) line 51 at %d\n",$time);
 end
   assign  _sw_exec = _reg_21|
    _reg_19|
    _reg_17|
    _reg_15|
    _reg_13|
    _reg_11|
    _reg_9|
    _reg_7|
    _reg_5|
    _reg_3;
   assign  _sw_p_reset = p_reset;
   assign  _sw_m_clock = m_clock;
   assign  _net_0 = (cnt==10'b0001100100);
always @(posedge m_clock)
  begin
    if(_reg_1)
    begin
    $display("finish");
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_1)
    begin
    $finish;
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_2)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_4)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_6)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_8)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_10)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_12)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_14)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_16)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_18)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_20)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_22)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock)
  begin
    if(_reg_24)
    begin
    $display("period = %x",_sw_period);
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     cnt <= 10'b0000000000;
else   cnt <= (cnt+10'b0000000001);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_1 <= 1'b0;
else if ((_reg_1|_reg_2))
      _reg_1 <= _reg_2;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_2 <= 1'b0;
else if ((_reg_2|_reg_3))
      _reg_2 <= _reg_3;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_3 <= 1'b0;
else if ((_reg_3|_reg_4))
      _reg_3 <= _reg_4;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if ((_reg_4|_reg_5))
      _reg_4 <= _reg_5;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_5 <= 1'b0;
else if ((_reg_5|_reg_6))
      _reg_5 <= _reg_6;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_6 <= 1'b0;
else if ((_reg_6|_reg_7))
      _reg_6 <= _reg_7;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_7 <= 1'b0;
else if ((_reg_7|_reg_8))
      _reg_7 <= _reg_8;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_8 <= 1'b0;
else if ((_reg_8|_reg_9))
      _reg_8 <= _reg_9;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_9 <= 1'b0;
else if ((_reg_9|_reg_10))
      _reg_9 <= _reg_10;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_10 <= 1'b0;
else if ((_reg_10|_reg_11))
      _reg_10 <= _reg_11;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_11 <= 1'b0;
else if ((_reg_11|_reg_12))
      _reg_11 <= _reg_12;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_12 <= 1'b0;
else if ((_reg_12|_reg_13))
      _reg_12 <= _reg_13;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_13 <= 1'b0;
else if ((_reg_13|_reg_14))
      _reg_13 <= _reg_14;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_14 <= 1'b0;
else if ((_reg_14|_reg_15))
      _reg_14 <= _reg_15;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_15 <= 1'b0;
else if ((_reg_15|_reg_16))
      _reg_15 <= _reg_16;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_16 <= 1'b0;
else if ((_reg_16|_reg_17))
      _reg_16 <= _reg_17;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_17 <= 1'b0;
else if ((_reg_17|_reg_18))
      _reg_17 <= _reg_18;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_18 <= 1'b0;
else if ((_reg_18|_reg_19))
      _reg_18 <= _reg_19;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_19 <= 1'b0;
else if ((_reg_19|_reg_20))
      _reg_19 <= _reg_20;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_20 <= 1'b0;
else if ((_reg_20|_reg_21))
      _reg_20 <= _reg_21;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_21 <= 1'b0;
else if ((_reg_21|_reg_22))
      _reg_21 <= _reg_22;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_22 <= 1'b0;
else if ((_reg_22|_reg_23))
      _reg_22 <= _reg_23;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_23 <= 1'b0;
else if ((_reg_23|_reg_24))
      _reg_23 <= _reg_24;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_24 <= 1'b0;
else if ((test|(_reg_24|_reg_25)))
      _reg_24 <= (_reg_25|test);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_25 <= 1'b0;
else if (_reg_25)
      _reg_25 <= 1'b0;
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20140126), IP ARCH, Inc. Mon Aug 15 00:33:43 2016
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20140126), IP ARCH, Inc. Mon Aug 15 00:33:43 2016
 Licensed to :EVALUATION USER:
*/

//synthesis translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
module tb;
	parameter tCYC=2;
	parameter tPD=(tCYC/10);

	reg p_reset;
	reg m_clock;

	sweep_ive sweep_ive_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("sweep_ive.vcd");
		$dumpvars(0,sweep_ive_instance);
	end

	initial begin
		#(tPD)
			p_reset = 1;
			m_clock = 0;
		#(tCYC)
			p_reset = 0;
	end

endmodule

//synthesis translate_on
