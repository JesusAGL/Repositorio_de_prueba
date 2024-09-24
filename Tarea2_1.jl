##EJERCICIO 1

f(z)= z^2+z^9
f´(z)=2z+9z^8
i=0+1im
#Defino la función
#derivada_paso_complejo(f,z,h)=((f(z + i*h)im) / h)
derivada_paso_complejo(f,z,h)=((f(z + h*i) - f(z - h*i)) / 2h)

#Error 
#errorabs_dpc(f, f´, z, h)=abs(f´(z) - derivada_paso_complejo(f,z,h))

#errs_dpc = [errorabs_dpc(f,f´,1,1/10i) for i=1:10]

#EJERCICIO 2

#numeros_duales()



#D_f(x_0) = f(x_0) + ϵ*f´(x_0)
