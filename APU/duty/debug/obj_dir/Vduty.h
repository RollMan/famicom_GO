// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _Vduty_H_
#define _Vduty_H_

#include "verilated_heavy.h"
class Vduty__Syms;

//----------

VL_MODULE(Vduty) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(p_reset,0,0);
    VL_IN8(m_clock,0,0);
    VL_IN8(Vin,3,0);
    VL_IN8(dnum,1,0);
    VL_OUT8(V0,3,0);
    VL_IN8(setduty,0,0);
    VL_IN8(exec,0,0);
    //char	__VpadToAlign7[1];
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG8(duty__DOT__cnt,5,0);
    VL_SIG8(duty__DOT__d,1,0);
    VL_SIG8(duty__DOT___net_0,0,0);
    VL_SIG8(duty__DOT___net_1,0,0);
    VL_SIG8(duty__DOT___net_3,0,0);
    VL_SIG8(duty__DOT___net_4,0,0);
    VL_SIG8(duty__DOT___net_5,0,0);
    VL_SIG8(duty__DOT___net_6,0,0);
    VL_SIG8(duty__DOT___net_7,0,0);
    VL_SIG8(duty__DOT___net_8,0,0);
    VL_SIG8(duty__DOT___net_9,0,0);
    VL_SIG8(duty__DOT___net_10,0,0);
    VL_SIG8(duty__DOT___net_11,0,0);
    VL_SIG8(duty__DOT___net_12,0,0);
    VL_SIG8(duty__DOT___net_13,0,0);
    VL_SIG8(duty__DOT___net_14,0,0);
    VL_SIG8(duty__DOT___net_15,0,0);
    VL_SIG8(duty__DOT___net_16,0,0);
    VL_SIG8(duty__DOT___net_17,0,0);
    VL_SIG8(duty__DOT___net_18,0,0);
    VL_SIG8(duty__DOT___net_19,0,0);
    VL_SIG8(duty__DOT___net_20,0,0);
    VL_SIG8(duty__DOT___net_21,0,0);
    VL_SIG8(duty__DOT___net_22,0,0);
    VL_SIG8(duty__DOT___net_23,0,0);
    VL_SIG8(duty__DOT___net_24,0,0);
    VL_SIG8(duty__DOT___net_25,0,0);
    VL_SIG8(duty__DOT___net_26,0,0);
    VL_SIG8(duty__DOT___net_27,0,0);
    VL_SIG8(duty__DOT___net_28,0,0);
    VL_SIG8(duty__DOT___net_29,0,0);
    VL_SIG8(duty__DOT___net_30,0,0);
    VL_SIG8(duty__DOT___net_31,0,0);
    VL_SIG8(duty__DOT___net_32,0,0);
    VL_SIG8(duty__DOT___net_33,0,0);
    VL_SIG8(duty__DOT___net_34,0,0);
    VL_SIG8(duty__DOT___net_36,0,0);
    VL_SIG8(duty__DOT___net_37,0,0);
    VL_SIG8(duty__DOT___net_38,0,0);
    VL_SIG8(duty__DOT___net_39,0,0);
    VL_SIG8(duty__DOT___net_40,0,0);
    VL_SIG8(duty__DOT___net_41,0,0);
    VL_SIG8(duty__DOT___net_42,0,0);
    VL_SIG8(duty__DOT___net_43,0,0);
    VL_SIG8(duty__DOT___net_44,0,0);
    VL_SIG8(duty__DOT___net_45,0,0);
    VL_SIG8(duty__DOT___net_46,0,0);
    VL_SIG8(duty__DOT___net_47,0,0);
    VL_SIG8(duty__DOT___net_48,0,0);
    VL_SIG8(duty__DOT___net_49,0,0);
    VL_SIG8(duty__DOT___net_50,0,0);
    VL_SIG8(duty__DOT___net_51,0,0);
    VL_SIG8(duty__DOT___net_52,0,0);
    VL_SIG8(duty__DOT___net_53,0,0);
    VL_SIG8(duty__DOT___net_54,0,0);
    VL_SIG8(duty__DOT___net_55,0,0);
    VL_SIG8(duty__DOT___net_56,0,0);
    VL_SIG8(duty__DOT___net_57,0,0);
    VL_SIG8(duty__DOT___net_58,0,0);
    VL_SIG8(duty__DOT___net_59,0,0);
    VL_SIG8(duty__DOT___net_60,0,0);
    VL_SIG8(duty__DOT___net_61,0,0);
    VL_SIG8(duty__DOT___net_62,0,0);
    VL_SIG8(duty__DOT___net_63,0,0);
    VL_SIG8(duty__DOT___net_64,0,0);
    VL_SIG8(duty__DOT___net_65,0,0);
    VL_SIG8(duty__DOT___net_66,0,0);
    VL_SIG8(duty__DOT___net_67,0,0);
    VL_SIG8(duty__DOT___net_69,0,0);
    VL_SIG8(duty__DOT___net_70,0,0);
    VL_SIG8(duty__DOT___net_71,0,0);
    VL_SIG8(duty__DOT___net_72,0,0);
    VL_SIG8(duty__DOT___net_73,0,0);
    VL_SIG8(duty__DOT___net_74,0,0);
    VL_SIG8(duty__DOT___net_75,0,0);
    VL_SIG8(duty__DOT___net_76,0,0);
    VL_SIG8(duty__DOT___net_77,0,0);
    VL_SIG8(duty__DOT___net_78,0,0);
    VL_SIG8(duty__DOT___net_79,0,0);
    VL_SIG8(duty__DOT___net_80,0,0);
    VL_SIG8(duty__DOT___net_81,0,0);
    VL_SIG8(duty__DOT___net_82,0,0);
    VL_SIG8(duty__DOT___net_83,0,0);
    VL_SIG8(duty__DOT___net_84,0,0);
    VL_SIG8(duty__DOT___net_85,0,0);
    VL_SIG8(duty__DOT___net_86,0,0);
    VL_SIG8(duty__DOT___net_87,0,0);
    VL_SIG8(duty__DOT___net_88,0,0);
    VL_SIG8(duty__DOT___net_89,0,0);
    VL_SIG8(duty__DOT___net_90,0,0);
    VL_SIG8(duty__DOT___net_91,0,0);
    VL_SIG8(duty__DOT___net_92,0,0);
    VL_SIG8(duty__DOT___net_93,0,0);
    VL_SIG8(duty__DOT___net_94,0,0);
    VL_SIG8(duty__DOT___net_95,0,0);
    VL_SIG8(duty__DOT___net_96,0,0);
    VL_SIG8(duty__DOT___net_97,0,0);
    VL_SIG8(duty__DOT___net_98,0,0);
    VL_SIG8(duty__DOT___net_99,0,0);
    VL_SIG8(duty__DOT___net_100,0,0);
    VL_SIG8(duty__DOT___net_102,0,0);
    VL_SIG8(duty__DOT___net_103,0,0);
    VL_SIG8(duty__DOT___net_104,0,0);
    VL_SIG8(duty__DOT___net_105,0,0);
    VL_SIG8(duty__DOT___net_106,0,0);
    VL_SIG8(duty__DOT___net_107,0,0);
    VL_SIG8(duty__DOT___net_108,0,0);
    VL_SIG8(duty__DOT___net_109,0,0);
    VL_SIG8(duty__DOT___net_110,0,0);
    VL_SIG8(duty__DOT___net_111,0,0);
    VL_SIG8(duty__DOT___net_112,0,0);
    VL_SIG8(duty__DOT___net_113,0,0);
    VL_SIG8(duty__DOT___net_114,0,0);
    VL_SIG8(duty__DOT___net_115,0,0);
    VL_SIG8(duty__DOT___net_116,0,0);
    VL_SIG8(duty__DOT___net_117,0,0);
    VL_SIG8(duty__DOT___net_118,0,0);
    VL_SIG8(duty__DOT___net_119,0,0);
    VL_SIG8(duty__DOT___net_120,0,0);
    VL_SIG8(duty__DOT___net_121,0,0);
    VL_SIG8(duty__DOT___net_122,0,0);
    VL_SIG8(duty__DOT___net_123,0,0);
    VL_SIG8(duty__DOT___net_124,0,0);
    VL_SIG8(duty__DOT___net_125,0,0);
    VL_SIG8(duty__DOT___net_126,0,0);
    VL_SIG8(duty__DOT___net_127,0,0);
    VL_SIG8(duty__DOT___net_128,0,0);
    VL_SIG8(duty__DOT___net_129,0,0);
    VL_SIG8(duty__DOT___net_130,0,0);
    VL_SIG8(duty__DOT___net_131,0,0);
    VL_SIG8(duty__DOT___net_132,0,0);
    VL_SIG8(duty__DOT___net_133,0,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    VL_SIG8(__Vclklast__TOP__m_clock,0,0);
    VL_SIG8(__Vclklast__TOP__p_reset,0,0);
    //char	__VpadToAlign150[2];
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    //char	__VpadToAlign156[4];
    Vduty__Syms*	__VlSymsp;		// Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    Vduty& operator= (const Vduty&);	///< Copying not allowed
    Vduty(const Vduty&);	///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    Vduty(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vduty();
    
    // USER METHODS
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vduty__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vduty__Syms* symsp, bool first);
  private:
    static QData	_change_request(Vduty__Syms* __restrict vlSymsp);
  public:
    static void	_combo__TOP__4(Vduty__Syms* __restrict vlSymsp);
    static void	_combo__TOP__7(Vduty__Syms* __restrict vlSymsp);
  private:
    void	_ctor_var_reset();
  public:
    static void	_eval(Vduty__Syms* __restrict vlSymsp);
    static void	_eval_initial(Vduty__Syms* __restrict vlSymsp);
    static void	_eval_settle(Vduty__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__1(Vduty__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__2(Vduty__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__3(Vduty__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__6(Vduty__Syms* __restrict vlSymsp);
    static void	_settle__TOP__5(Vduty__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(128);

#endif  /*guard*/
