import matplotlib.pyplot as plt

velocity = []
pressure = []
unknow = []
velocity_error = []
pressure_error = []
minres = []
with open("ex5.out") as file:
	for line in file:
		words = line.split(" ")

		if words[0] == "dim(R)":
			a = words[-1].strip()
			velocity.append(float(a))

		if words[0] == "dim(W)":
			b = words[-1].strip()
			pressure.append(float(b))

		if words[0] == "dim(R+W)":
			c = words[-1].strip()
			unknow.append(float(c))

		if (words[0] == "||") and (words[1] == "u_h"): 
			d = words[-1].strip()
			velocity_error.append(float(d))

		if (words[0] == "||") and (words[1] == "p_h"):
			e = words[-1].strip()
			pressure_error.append(float(e))

		if (words[0] == "MINRES") and (words[1] == "converged"):
			minres.append(float(words[3]))
 

print(velocity)
print(pressure)
print(unknow)
print(velocity_error)
print(pressure_error)
print(minres)


