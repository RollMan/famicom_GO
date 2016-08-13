/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Sun Aug 14 06:23:54 2016
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module envelop ( p_reset , m_clock , l , d , n , Vo , set , exec );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input l;
  wire l;
  input d;
  wire d;
  input [3:0] n;
  wire [3:0] n;
  output [3:0] Vo;
  wire [3:0] Vo;
  input set;
  wire set;
  input exec;
  wire exec;
  reg l_r;
  reg d_r;
  reg [3:0] n_r;
  reg [3:0] cnt;
  reg start;
  wire _proc_start_set;
  wire _proc_start_reset;
  wire _net_0;
  wire _net_1;
  wire _net_2;


// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_start_set)
  begin
#1 if (_proc_start_set===1'bx)
 begin
$display("Warning: control hazard(envelop:_proc_start_set) at %d",$time);
 end
#1 if (((exec)===1'bx) || (1'b1)===1'bx) $display("hazard (exec || 1'b1) line 23 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_start_set = exec;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_start_reset)
  begin
#1 if (_proc_start_reset===1'bx)
 begin
$display("Warning: control hazard(envelop:_proc_start_reset) at %d",$time);
 end
#1 if ((((exec&start))===1'bx) || (1'b1)===1'bx) $display("hazard ((exec&start) || 1'b1) line 22 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_start_reset = (exec&start);
   assign  _net_0 = 
// synthesis translate_off
// synopsys translate_off
(start)? 
// synthesis translate_on
// synopsys translate_on
((start)?(d_r==1'b1):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(start)? 
// synthesis translate_on
// synopsys translate_on
((start)?(cnt != 4'b0000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
(start)? 
// synthesis translate_on
// synopsys translate_on
((start)?((cnt==4'b0000)&l_r):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((start&(~_net_0))&(start&_net_0)))
 begin $display("Warning: assign collision(envelop:Vo) at %d",$time);
if ((start&(~_net_0))) $display("assert ((start&(~_net_0))) line 31 at %d\n",$time);
if ((start&_net_0)) $display("assert ((start&_net_0)) line 29 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  Vo = 
// synthesis translate_off
// synopsys translate_off
(((start&(~_net_0))&(start&_net_0)))? 4'bx :(((start&(~_net_0))|(start&_net_0)))? 
// synthesis translate_on
// synopsys translate_on
(((start&(~_net_0)))?cnt:4'b0)|
    (((start&_net_0))?n_r:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
always @(posedge m_clock)
  begin
if (set)
      l_r <= l;
end
always @(posedge m_clock)
  begin
if (set)
      d_r <= d;
end
always @(posedge m_clock)
  begin
if (set)
      n_r <= n;
end
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if ((((start&_net_2)&(start&_net_1))|(((start&_net_2)|(start&_net_1))&exec)))   cnt <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((start&_net_2))
      cnt <= 4'b1111;
else if ((start&_net_1))
      cnt <= (cnt-4'b0001);
else if (exec)
      cnt <= 4'b1111;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((start&_net_2)|(start&_net_1))|exec)==1'b1) ||
 ((((start&_net_2)|(start&_net_1))|exec)==1'b0) ) begin
 if ((((start&_net_2)&(start&_net_1))|(((start&_net_2)|(start&_net_1))&exec)))
 begin $display("Warning: assign collision(envelop:cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(envelop:cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     start <= 1'b0;
else if ((_proc_start_set|_proc_start_reset))
      start <= _proc_start_set;
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Sun Aug 14 06:23:54 2016
 Licensed to :EVALUATION USER
*/
