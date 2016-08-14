#include <stdio.h>
#include <iostream>

#include <verilated.h>
#include "debug/obj_dir/Vsweep.h" //RESET INTO YOUR VALUE

using namespace std;

Vsweep *addr_i;//RESET INTO YOUR VALUE

unsigned long int pc;

double sc_time_stamp(){
	return pc;
}

void init(){
	addr_i->m_clock=0;
	addr_i->p_reset=0;
	addr_i->eval();
	addr_i->m_clock=1;
	addr_i->p_reset=1;
	addr_i->eval();
	addr_i->m_clock=0;
	addr_i->p_reset=0;
	addr_i->eval();
	pc=0;
}

void falling_clock(){
	addr_i->m_clock=0;
	addr_i->p_reset=1;
	addr_i->eval();
}

void rising_clock(){
	addr_i->m_clock=1;
	pc++;
	addr_i->eval();
}

int lineidx = 0;



int main(int argv,char *argc[]){

	addr_i = new Vsweep();

	init();
  falling_clock();
  addr_i->e  = 1;
  addr_i->p  = 1;
  addr_i->n  = 1;
  addr_i->s  = 1;
  addr_i->lencntr = 8;
  addr_i->timer_input = 0x7E;
  
  addr_i->set = 1;
  addr_i->set_param = 1;
  rising_clock();

  for(int i = 0; i < 10; i++){
    addr_i->exec = 1;
    falling_clock();
    rising_clock();
    printf("period = %x\n", addr_i->period);
  }
	return 0;
}

