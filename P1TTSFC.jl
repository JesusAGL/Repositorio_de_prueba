function triangulo_pascal(n)
    triangulo = zeros(Int, n, n)
    triangulo[:, 1] .= 1
    for i in 2:n
        for j in 2:i
            triangulo[i, j] = triangulo[i-1, j-1] + triangulo[i-1, j]
            
        end
    end
    return triangulo
end

n=5
pascal = triangulo_pascal(n)
println(pascal)