SELECT 1; -- Тестовый оператор

-- ALTER TABLE product
--     ADD COLUMN price DOUBLE PRECISION;

-- UPDATE product p
-- SET    price = pi.price
-- FROM   product_info pi
-- WHERE  p.id = pi.product_id;

-- ALTER TABLE orders
--     ADD COLUMN date_created DATE;

-- UPDATE orders o
-- SET    date_created = od.date_created
-- FROM   orders_date od
-- WHERE  o.id = od.order_id;

-- UPDATE orders o
-- SET    status = COALESCE(o.status, od.status)
-- FROM   orders_date od
-- WHERE  o.id = od.order_id;

-- ALTER TABLE order_product
--     ADD CONSTRAINT fk_order_product_product
--         FOREIGN KEY (product_id) REFERENCES product(id),
--     ADD CONSTRAINT fk_order_product_order
--         FOREIGN KEY (order_id) REFERENCES orders(id);

-- DROP TABLE product_info;
-- DROP TABLE orders_date;