-- 5 nuevos clientes
INSERT INTO clientes (nombre, direccion, telefono)
VALUES ('Maria', 'Avenida Central #123', '98452738'),
('Luis', 'Los Almendros 589', '92748268'),
('Carla', 'Calle San Juan 94', '94675362'),
('Ana', 'Las Lomas 7430', '97846392'),
('Jose', 'El Roble #12', '943726452');

SELECT * FROM clientes;

-- 10 nuevos pedidos
INSERT INTO pedidos (fecha, total, id_cliente)
VALUES ('2024-11-01', '920', '1'),
('2024-11-02', '410', '2'),
('2024-11-03', '502', '2'),
('2024-11-04', '380', '3'),
('2024-11-05', '6000', '5'),
('2024-11-06', '250', '1'),
('2024-11-07', '3700', '2'),
('2024-11-08', '500', '3'),
('2024-11-09', '820', '5'),
('2024-11-10', '2450', '4');

SELECT * FROM pedidos;

-- Todos los clientes y sus pedidos
SELECT c.id, c.nombre, p.id, p.id_cliente 
FROM clientes c LEFT JOIN pedidos p
ON c.id = p.id_cliente;

-- Todos los pedidos de un cliente especifico
SELECT * FROM pedidos
WHERE id_cliente = 2;

-- Total de todos los pedidos para cada cliente.
SELECT c.id, c.nombre, SUM(p.total)
FROM clientes c LEFT JOIN pedidos p
ON c.id = p.id_cliente
GROUP BY c.id;

-- Elimina un cliente específico y todos sus pedidos
DELETE FROM pedidos WHERE id_cliente = 1;
DELETE FROM clientes WHERE id = 1;

-- 3 clientes que han realizado más pedidos, ordenados de forma descendente por el número de pedidos.
SELECT c.id, c.nombre, COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.id_cliente
GROUP BY c.id
ORDER BY total_pedidos DESC
LIMIT 3;