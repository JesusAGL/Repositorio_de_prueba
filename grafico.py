import numpy as np
import matplotlib.pyplot as plt

# Parámetros de la ecuación
A = 4.697
B = -3.917

# Rango de valores de resistencia
R_values = np.logspace(np.log10(200), np.log10(30000), 100)

# Cálculo de theta a partir de la ecuación
theta_values = 10 ** ((A - np.log10(R_values)) / (-B))

# Generar el gráfico log-log
plt.figure(figsize=(8, 6))
plt.loglog(theta_values, R_values, label=r'$\log R = 4.697 - 3.917 \log \theta$', color='b')

# Etiquetas y título
plt.xlabel(r'Temperatura $\theta$ (K)')
plt.ylabel(r'Resistencia $R$ ($\Omega$)')
plt.title('Gráfico Log-Log de Resistencia vs Temperatura')
plt.legend()
plt.grid(True, which="both", linestyle="--", linewidth=0.5)

# Mostrar el gráfico
plt.show()