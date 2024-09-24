#Se llaman a las librerias 
using Random
using Plots 

#Vectores que forman un triángulo equilátero

b1=[1,0]
b2=[-1,0]
b3=[0,sqrt(3)]

#Se crea un vector de vectores
inicial=[b1, b2, b3]

#Se saca el punto medio
inicial2 = [(b1+b2)/2]

#Crea el ciclo para iterar muchas veces
for i in 1:50
    indice = rand(1:3)
    
    v = inicial2[end]

    t = inicial[indice]

    push!(inicial2,(v+t)/2)
     
end

#Se hacen 2 vectores con las primeras y segundas entradas de "inicial"
vector_e = [v[1] for v in (inicial)]
vector_a = [v[2] for v in (inicial)]

#Se hacen 2 vectores con las primeras y segundas entradas de "inicial2"
vector_nuevox=[v[1] for v in (inicial2)]
#vector_nuevox=first.(inicial2)
vector_nuevoy=[v[2] for v in (inicial2)]

#Se agrega las entradas de "inicial" a "inicial2"
append!(vector_nuevox,vector_e)
append!(vector_nuevoy,vector_a)

#scatter(x,y,label="puntos", markerside=5)

#Gráfica
plot(vector_nuevox, vector_nuevoy)






