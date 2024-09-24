function triangulo_pascal_piramide_ceros(n)
    """
    Calcula y muestra las primeras `n` filas del Triángulo de Pascal en forma de pirámide con ceros entre los números.

    # Argumentos:
        - `n`: Número de filas a calcular.
    """

    triangulo = zeros(Int, n, n)
    triangulo[:, 1] .= 1
    for i in 2:n
        for j in 2:i
            triangulo[i, j] = triangulo[i-1, j-1] + triangulo[i-1, j]
        end
    end

    # Imprimir en forma de pirámide con ceros
    for i in 1:n
        # Agregar espacios en blanco para alinear la pirámide
        print(" "^(n-i))
        for j in 1:i
            print(lpad(triangulo[i, j], 3), " ")
        end
        println()
    end
end

# Ejemplo de uso:
n = 10
triangulo_pascal_piramide_ceros(n)