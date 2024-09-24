using Plots

function triangulo_pascal_grafica(n)
    """
         Argumentos:
        - `n`: Número de filas a calcular.
    """

    triangulo = zeros(Int, n, n)
    triangulo[:, 1] .= 1
    for i in 2:n
        for j in 2:i
            triangulo[i, j] = triangulo[i-1, j-1] + triangulo[i-1, j]
        end
    end

    # Crear una matriz de coordenadas para los puntos
    x = Int[]  #checar----
    y = Int[]
    for i in 1:n, j in 1:i
        push!(x, j - i/2)
        push!(y, -i)
    end

    # Crear la gráfica
    scatter(x, y, zcolor=vec(triangulo[triangulo .> 0]),
            markersize=10,
            markerstrokewidth=0,
            colorbar=true,
            title="Triángulo de Pascal",
            xlabel="Posición",
            ylabel="Fila")
            
    
end

# Ejemplo de uso:
n = 5
triangulo_pascal_grafica(n)