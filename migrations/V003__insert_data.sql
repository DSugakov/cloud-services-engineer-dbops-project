-- V003__insert_data.sql
-- Вставляем начальные данные в таблицу product
-- Обратите внимание, что столбец price теперь имеет тип NUMERIC(10, 2) согласно V002
INSERT INTO product (id, name, picture_url, price) VALUES
(1, 'Сливочная', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/6.jpg', 320.00),
(2, 'Особая', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/5.jpg', 179.00),
(3, 'Молочная', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/4.jpg', 225.00),
(4, 'Нюренбергская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/3.jpg', 315.00),
(5, 'Мюнхенская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/2.jpg', 330.00),
(6, 'Русская', 'https://res.cloudinary.com/sugrobov/image/upload/v1623323635/repos/sausages/1.jpg', 189.00);

-- Вставляем начальные данные в таблицу orders
-- date_created теперь добавляется через DEFAULT current_date в V002
INSERT INTO orders (id, status)
SELECT i,
       (array['pending', 'shipped', 'cancelled'])[floor(random() * 3 + 1)]
FROM generate_series(1, 200000) s(i);

-- Вставляем начальные данные в таблицу order_product
-- Используем CROSS JOIN для генерации всех возможных комбинаций order_id и product_id
-- и затем выбираем случайные 300000 записей
WITH all_combinations AS (
    SELECT 
        o.id as order_id,
        p.id as product_id,
        floor(1 + random() * 20)::int as quantity
    FROM orders o
    CROSS JOIN product p
)
INSERT INTO order_product (quantity, order_id, product_id)
SELECT quantity, order_id, product_id
FROM all_combinations
ORDER BY random()
LIMIT 300000;