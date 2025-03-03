QUERIES

1-Lista el nombre de todos los productos que hay en la mesa producto.

SELECT p.nombre FROM producto p;

2- Lista los nombres y los precios de todos los productos de la mesa producto.

SELECT p.nombre,p.precio FROM producto p;

3-Lista todas las columnas de la tabla producto.

SELECT * FROM producto;

4-Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).

SELECT p.nombre, p.precio AS '€', ROUND((p.precio*1.04), 2)  AS '$' FROM producto p;

5-Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). 
Utiliza los siguientes sobrenombre para las columnas: nombre de producto, euros, dólares.

SELECT p.nombre AS 'nom de producto', p.precio AS 'euros', ROUND((p.precio*1.04), 2)  AS 'dòlars' FROM producto p 

6-Lista los nombres y los precios de todos los productos de la mesa producto, convirtiendo los nombres a mayúscula.

SELECT UPPER(p.nombre) AS nombre, precio FROM producto p;

7-Lista los nombres y los precios de todos los productos de la mesa producto, convirtiendo los nombres a minúscula.

SELECT LOWER(p.nombre) AS nombre, precio FROM producto p;

8-Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.

SELECT nombre, UPPER(SUBSTRING(nombre,1, 2)) AS primeros_dos_caracteres_nombre FROM fabricante;

9-Lista los nombres y los precios de todos los productos de la mesa producto, redondeando el valor del precio.

SELECT pp.nombre, pp.precio AS precio, ROUND(pp.precio) AS 'Precio redondeado' FROM producto pp;

10-Lista los nombres y precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.

SELECT pp.nombre, pp.precio AS precio, TRUNCATE(pp.precio,0) AS 'Precio redondeado' FROM producto pp;

11-Lista el código de los fabricantes que tienen productos en la mesa producto.

SELECT ff.codigo, ff.nombre FROM fabricante ff JOIN producto pp ON ff.codigo=pp.codigo_fabricante;  

12-Lista el código de los fabricantes que tienen productos en la mesa producto, eliminando los códigos que aparecen repetidos.

SELECT ff.codigo, ff.nombre FROM fabricante ff JOIN producto pp ON ff.codigo=pp.codigo_fabricante GROUP BY ff.codigo, ff.nombre; 

13-Lista los nombres de los fabricantes ordenados de forma ascendente.

SELECT ff.nombre FROM fabricante ff JOIN producto pp ON ff.codigo=pp.codigo_fabricante GROUP BY ff.nombre ASC

14-Lista los nombres de los fabricantes ordenados de forma descendente.

SELECT * FROM fabricante ORDER BY nombre DESC;

15-Lista los nombres de los productos ordenados, en primer lugar, por el nombre de forma ascendente y, en segundo lugar, por el precio de forma descendente.

SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;

16-Devuelve una lista con las 5 primeras filas de la mesa fabricante.

SELECT * FROM fabricante ORDER BY nombre DESC LIMIT 5;

17-Devuelve una lista con 2 filas a partir de la cuarta fila de la mesa fabricante. La cuarta fila también debe incluirse en la respuesta.

SELECT * FROM fabricante ORDER BY codigo ASC LIMIT 2 OFFSET 3;

18-Lista el nombre y el precio del producto más barato. (Utiliza solo las cláusulas ORDER BY y LIMIT). 
NOTA: Aquí no podría usar MIN(precio), necesitaría GROUP BY.

SELECT * FROM producto ORDER BY precio ASC LIMIT 1;

19-Lista el nombre y el precio del producto más caro. (Utiliza solo las cláusulas ORDER BY y LIMIT). 
NOTA: Aquí no podría usar MAX(precio), necesitaría GROUP BY.

SELECT * FROM producto ORDER BY precio DESC LIMIT 1;

20-Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.

SELECT * FROM producto p WHERE p.codigo_fabricante=2 ORDER BY precio DESC;

21-Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.

SELECT p.nombre,p.codigo_fabricante,p.precio FROM producto p ORDER BY precio DESC;

22-Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
Ordena el resultado por el nombre del fabricante, por orden alfabético.

SELECT f.nombre,p.nombre,p.precio FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo ORDER BY f.nombre ASC;

23-Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, 
de todos los productos de la base de datos.

SELECT p.codigo AS 'codi del producte', p.nombre AS 'nom del producte', f.codigo AS 'codi del fabricador', f.nombre AS 'nom del fabricador' FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo ORDER BY p.codigo ASC;

24-Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.

SELECT p.precio AS 'Preu', p.nombre AS 'nom del producte', f.nombre AS 'nom del fabricador' FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo ORDER BY p.precio ASC LIMIT 1;

25-Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.

SELECT p.precio AS 'Preu', p.nombre AS 'nom del producte', f.nombre AS 'nom del fabricador' FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo ORDER BY p.precio DESC LIMIT 1;

26-Devuelve una lista de todos los productos del fabricante Lenovo.

SELECT * FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre='Lenovo';

27-Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.

SELECT * FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre='Crucial' AND p.precio>200;

28-Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Sin utilizar el operador IN.

SELECT * FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE (f.nombre='Crucial' OR f.nombre='Hewlett-Packard' OR f.nombre='Seagate');

29-Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Utilizando el operador IN.

SELECT p.nombre AS nombre_producto, f.nombre AS nombre_fabricante
FROM producto p
JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');

30- Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre acabe por la vocal e.

SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre LIKE '%e';

31- Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.

SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre LIKE '%w%';

32-Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. 
Ordena el resultado, en primer lugar, por el precio (en orden descendente) y, en segundo lugar, por el nombre (en orden ascendente).

SELECT p.precio, p.nombre, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE p.precio>=180 ORDER BY p.precio DESC, p.nombre ASC;

33-Devuelve un listado con el código y el nombre de fabricante, solo de aquellos fabricantes que tienen productos asociados en la base de datos.

SELECT f.nombre, f.codigo FROM fabricante f WHERE f.codigo IN (SELECT p.codigo_fabricante FROM producto p);

34-Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. 
El listado deberá mostrar también a aquellos fabricantes que no tienen productos asociados.

SELECT f.nombre, p.nombre FROM fabricante f LEFT JOIN producto p ON f.codigo=p.codigo_fabricante ;

35-Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.

SELECT f.nombre, f.codigo FROM fabricante f WHERE f.codigo NOT IN (SELECT p.codigo_fabricante FROM producto p);

36-Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).

SELECT f.nombre, p.nombre FROM fabricante f, producto p WHERE f.nombre='Lenovo' AND f.codigo=p.codigo_fabricante ;

37-Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin usar INNER JOIN).

SELECT * FROM producto pp WHERE pp.precio=(SELECT p.precio FROM fabricante f, producto p WHERE f.nombre='Lenovo' AND f.codigo=p.codigo_fabricante ORDER BY p.precio DESC LIMIT 1);

38-Lista el nombre del producto más caro del fabricante Lenovo.

SELECT p.nombre,p.precio FROM fabricante f, producto p WHERE f.nombre='Lenovo' AND f.codigo=p.codigo_fabricante ORDER BY p.precio DESC LIMIT 1;

39-Lista el nombre del producto más barato del fabricante Hewlett-Packard.

SELECT p.nombre,p.precio FROM fabricante f, producto p WHERE f.nombre='Hewlett-Packard' AND f.codigo=p.codigo_fabricante ORDER BY p.precio ASC LIMIT 1;

40- Devuelve todos los productos de la base de datos que tienen un precio mayor o igual al producto más caro del fabricante Lenovo.

SELECT * FROM producto pp WHERE pp.precio>=(SELECT p.precio FROM fabricante f, producto p WHERE f.nombre='Lenovo' AND f.codigo=p.codigo_fabricante ORDER BY p.precio DESC LIMIT 1);

41-Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos.

SELECT pp.* FROM producto pp 
JOIN fabricante ff ON pp.codigo_fabricante = ff.codigo 
WHERE ff.nombre = 'ASUS' AND pp.precio >= (SELECT AVG(p.precio) AS preu_mig 
FROM producto p 
WHERE p.codigo_fabricante IN (SELECT codigo FROM fabricante WHERE nombre = 'ASUS'));
