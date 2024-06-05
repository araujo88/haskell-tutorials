import random

with open("numbers.txt", 'w') as f:
    for i in range (1, 101):
        f.write(str(random.randint(10,99)) + " ")
        if i % 10 == 0:
            f.write("\n")