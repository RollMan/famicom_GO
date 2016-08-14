for i in range(1, 8):
  print("N == " + str(i) + " : if(n) period_r := period_r - (period_r >> " + str(i) + ");")
  print("         else  period_r := period_r + (period_r >> " + str(i) + ");")
