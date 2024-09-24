using Random
using Plots 

#Vectores unitarios en R^3

vece1=[1,0]
vece2=[-1,0]
vece3=[0,sqrt(3)]



    inicial=[vece1, vece2, vece3]
    shuffle!(inicial)

    elemento1_local=inicial[1]
    elemento2_local=inicial[2]
    r=(elemento1_local + elemento2_local)/2

    push!(inicial, r)

    



#scatter(inicial, xlim=(-2,2),ylim=(0,2))
#scatter(x,y,label="puntos", markerside=5)


#vector_nuevo=rand(vector, 2)

#append!(vector, suma)


#vector_r=[vectore1,vectore2,vectore3]
#r=rand(vector_r,2)



#Esperame tantito
#if r[1[1]] != r[2[1]]
#    print((r[1[1]]+r[2[1]])/2)
#end

