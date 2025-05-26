ALTER TABLE product ADD COLUMN price NUMERIC(10, 2);
ALTER TABLE orders ADD COLUMN date_created DATE DEFAULT current_date;

DROP TABLE product_info;
DROP TABLE orders_date;