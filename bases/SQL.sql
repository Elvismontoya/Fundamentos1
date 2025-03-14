CREATE TABLE Clientes (
ID INTEGER PRIMARY KEY AUTOINCREMENT,
Nombre TEXT,
Correo_Electronico TEXT,
Telefono NUMERIC
);

CREATE TABLE Productos (
ID_Producto INTEGER PRIMARY KEY AUTOINCREMENT,
Nombre TEXT,
Precio NUMERIC,
Stock NUMERIC
);

CREATE TABLE Pedidos (
ID_Pedido INTEGER PRIMARY KEY AUTOINCREMENT,
Fecha TEXT,
Total_compra NUMERIC,
ID_Cliente INTEGER,
FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID)
);

CREATE TABLE Detalle_Pedido (
ID_Pedidos INTEGER,
ID_Productos INTEGER,
Cantidad INTEGER,
PRIMARY KEY (ID_Pedidos, ID_Productos),
FOREIGN KEY (ID_Pedidos) REFERENCES Pedidos(ID_Pedido),
FOREIGN KEY (ID_Productos) REFERENCES Productos(ID_Producto)
);

INSERT INTO Clientes(Nombre, Correo_Electronico, Telefono)
VALUES ('Elvis Montoya','em05654@gmail.com',32054654231),
	   ('Mateo','MAT54@gmail.com',156321315)

INSERT INTO Productos (Nombre, Precio, Stock)
VALUES ('Takis', 3000.50, 20),
       ('Doritos', 2000.75, 15),
       ('Detodito', 2500.30, 30);

INSERT INTO Pedidos (ID_Cliente, Fecha, Total_compra)
VALUES (1, '2025-03-08', 3000.50),
       (2, '2025-03-09', 2000.30);

INSERT INTO Detalle_Pedido(ID_Pedidos,ID_Productos,Cantidad)
VALUES (1,1,3),
	   (2,2,6);
	   
SELECT * FROM Clientes

SELECT Clientes.Nombre, Pedidos.ID_Pedido, Pedidos.Fecha, Pedidos.Total_compra
FROM Clientes
JOIN Pedidos ON Clientes.ID = Pedidos.ID_Cliente;

SELECT Productos.Nombre, Detalle_Pedido.Cantidad, (Productos.Precio * Detalle_Pedido.Cantidad) AS Total_Compra
FROM Productos
JOIN Detalle_Pedido ON Productos.ID_Producto = Detalle_Pedido.ID_Productos
JOIN Pedidos ON Pedidos.ID_Pedido = Detalle_Pedido.ID_Pedidos;


import  sqlite3

conexion=sqlite3.connect("Datos.db")

with sqlite3.connect("bd1.db") as conexion:
    # Conexion.execute("""CREATE TABLE IF NOT EXISTS articulos(
    #                 ID INTEGER PRIMARY KEY AUTOINCREMENT,
    #                 Nombre TEXT,
    #                 Correo_Electronico TEXT,
    #                 Telefono NUMERIC
    #                 )""")
    
    # conexion.execute("""CREATE TABLE IF NOT EXISTS Personas(
    #                 ID INTEGER PRIMARY KEY AUTOINCREMENT,
    #                 Nombre TEXT,
    #                 Correo_Electronico TEXT,
    #                 Telefono TEXT
    #                 )""")
    
    
    # datos=[("Elvis","elvisam@56","320518564")]
    # conexion.executemany("INSERT INTO Personas(Nombre, Correo_Electronico, Telefono) VALUES (?,?,?)", datos)
    # conexion.commit()

    # datos=[("Camilo","cccc1","3205145654")]
    # conexion.executemany("INSERT INTO Personas(Nombre, Correo_Electronico, Telefono) VALUES (?,?,?)", datos)
    # conexion.commit()

    cursor= conexion.execute("SELECT ID, Nombre, Correo_Electronico, Telefono FROM Personas")
    filas= cursor.fetchall()
    for fila in filas:
        print(fila)
