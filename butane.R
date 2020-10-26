Vbar=3.0
T=370
R=0.083145
P=R*T/Vbar
cat("Ideal gas law", P,"\n")
A=16.44
B=0.07245
P=R*T/(Vbar-B)-A/(((Vbar^2)+(Vbar*B))+((B*Vbar)-(B^2)))
cat("Peng-Robinson equation ",P,"\n")
