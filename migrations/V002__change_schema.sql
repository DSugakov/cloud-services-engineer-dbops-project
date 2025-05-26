-- V002__change_schema.sql
-- Добавляем столбец price в таблицу product с типом NUMERIC для точности денежных значений
ALTER TABLE product ADD COLUMN price NUMERIC(10, 2);

-- Добавляем столбец date_created в таблицу orders
ALTER TABLE orders ADD COLUMN date_created DATE DEFAULT current_date;

-- Удаляем таблицы product_info и orders_date, если они существуют
DROP TABLE IF EXISTS product_info;
DROP TABLE IF EXISTS orders_date;