function generar_triangulo_pascal(n)
    # Inicializa el triángulo con la primera fila
    triángulo = [[1]]
    
    for i in 2:n
        fila_anterior = triángulo[end]
        nueva_fila = [1]  # La primera posición de la nueva fila siempre es 1
        
        # Calcula los valores intermedios de la nueva fila
        for j in 1:(length(fila_anterior) - 1)
            push!(nueva_fila, fila_anterior[j] + fila_anterior[j + 1])
        end
        
        # La última posición de la nueva fila siempre es 1
        push!(nueva_fila, 1)
        
        # Agrega la nueva fila al triángulo
        push!(triángulo, nueva_fila)
    end
    
    return triángulo
end

# Ejemplo de uso
n = 15  # Número de filas del Triángulo de Pascal que quieres generar
triángulo = generar_triangulo_pascal(n)

# Imprime el triángulo de Pascal
for fila in triángulo
    println(fila)
end