N=1024

matrizpascal = zeros(Int,N+1,2*(N+1)+1)
matrizpascal[1,N+2]=1

for n=1:N
    for j=2:2*(N+1)
        matrizpascal[n+1,j] = matrizpascal[n,j-1]+matrizpascal[n,j+1]
    end

end
matrizpascal
