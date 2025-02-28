#Crear una lista de números máximo 15 y usar map() y lambda para elevar al cuadrado cada número de la lista.
#Desafío extra: Filtrar los números mayores a 50 utilizando filter().

numeros = [121,5,4,8,9,6,3,7,5,60,71,96,45,14,22]
resultado=map(lambda n:n**2,numeros)
print(list(resultado))

resultado=filter(lambda n:n >50,numeros)
print(list(resultado))

