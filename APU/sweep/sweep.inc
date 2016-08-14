declare sweep{
  input e;
  input p[3];
  input n;
  input s[3];
  input lencntr[4];
  input timer_input[11];
  output period[11];
  
  func_in set(timer_input);
  func_in set_param(e,p,n,s);
  func_in exec();

  func_out silent();
  func_out timer_set(period);
}
