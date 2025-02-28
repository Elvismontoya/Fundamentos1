from Figuras.Cuadrado import  Calcular_Cuadrado
from Figuras.Triangulo import Area_Triangulo

lado_cuadrado = int(input("Ingrese el lado del cuadrado: "))
cuadrado_area = Calcular_Cuadrado(lado_cuadrado)
print(f"El área y el perimetro del cuadrado es: {cuadrado_area}")


base = int(input("Ingrese la base del triangulo: "))
altura = int(input("Ingrese la altura del triangulo: "))
area_triangulo = Area_Triangulo(base, altura)
print(f"El área del triangulo es: {area_triangulo}")

