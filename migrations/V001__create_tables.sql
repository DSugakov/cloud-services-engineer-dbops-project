create table if not exists users (
    id bigint generated by default as identity identity,
    name varchar(255) not null,
    picture_url varchar(255)
);

create table if not exists product_info (
    product_id bigint not null,
    name varchar(255) not null,
    price double precision not null
);

create table if not exists orders (
    id bigint generated by default as identity,
    status varchar(255) not null
);

create table if not exists orders_date(
    order_id bigint not null,
    status varchar(255) not null,
    created_at date default current_date
); 

create table if not exists order_product(
    quantity bigint not null,
    order_id bigint not null,
    product_id bigint not null
);

