#Crea una función llamada procesar_lista(numeros) que reciba una lista de números enteros y devuelva:
#La suma de los números.
#El número más grande y el más pequeño de la lista.
#El promedio de los valores.
#Luego, pide al usuario ingresar una lista de números máximo 10 y usa la función para mostrar los resultados.

def procesar_lista(numeros):
    suma = sum(numeros)
    maximo = max(numeros)
    minimo = min(numeros)
    promedio = suma / len(numeros)
    return suma, maximo, minimo, promedio

numeros=[]

for i in range(10):
    num = int(input("Ingrese un número entero: "))
    numeros.append(num)

suma, maximo, minimo, promedio = procesar_lista(numeros)
print(f"La suma de los números es: {suma}")
print(f"El número más grande es: {maximo}")
print(f"El número más pequeño es: {minimo}")
print(f"El promedio de los valores es: {promedio}")






