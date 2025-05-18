CREATE TABLE product (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    picture_url VARCHAR(255)
);

CREATE TABLE product_info (
    product_id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DOUBLE PRECISION
);

CREATE TABLE orders (
    id BIGINT PRIMARY KEY,
    status VARCHAR(255)
);

CREATE TABLE orders_date (
    order_id BIGINT PRIMARY KEY,
    status VARCHAR(255),
    date_created DATE
);

CREATE TABLE order_product (
    quantity INTEGER NOT NULL,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    PRIMARY KEY (order_id, product_id)
);