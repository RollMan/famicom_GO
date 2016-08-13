rate = int(input())

for i in range(16):
    if i < rate:
        print("count == " + "{0:>2}".format(i) + " : V0 = 1")
    else:
        print("count == " + "{0:>2}".format(i) + " : V0 = 0")
