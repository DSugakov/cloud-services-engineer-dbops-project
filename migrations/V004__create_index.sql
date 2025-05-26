-- V004__create_index.sql

-- Создаем индекс для ускорения поиска по order_id в таблице order_product
CREATE INDEX IF NOT EXISTS idx_order_product_order_id ON order_product(order_id);

-- Создаем составной индекс для ускорения фильтрации и сортировки по status и date_created в таблице orders
CREATE INDEX IF NOT EXISTS idx_orders_status_date_created ON orders(status, date_created);
