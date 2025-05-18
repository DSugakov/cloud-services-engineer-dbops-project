CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    picture_url VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS product_info (
    product_id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DOUBLE PRECISION,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    status VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS orders_date (
    order_id BIGINT PRIMARY KEY,
    status VARCHAR(255),
    date_created DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (order_id) REFERENCES orders(id)
);

CREATE TABLE IF NOT EXISTS order_product (
    quantity INTEGER NOT NULL,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);