CREATE INDEX IF NOT EXISTS idx_order_product_order_id ON order_product(order_id);

CREATE INDEX IF NOT EXISTS idx_orders_status_date ON orders(status, date_created);

CREATE INDEX IF NOT EXISTS idx_orders_shipped ON orders(date_created) WHERE status = 'shipped'; 