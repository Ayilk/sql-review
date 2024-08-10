
--HAVING es una función de agregación, una condición extra a las ya establecidas
--Devuelve un número con el conteo de la cantidad de elementos diferentes para init date
Select COUNT(init_date) from users HAVING COUNT(init_date) > 3;
