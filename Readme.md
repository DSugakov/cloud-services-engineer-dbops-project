# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

### Create database

`CREATE DATABASE store;`

### Create user for migrations and tests  

`CREATE USER test_user WITH PASSWORD 'test_password';`  
`GRANT ALL PRIVILEGES ON DATABASE store TO test_user;`  
`GRANT ALL PRIVILEGES ON SCHEMA public TO test_user;`  
`GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO test_user;`
`ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO test_user;`
`ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO test_user;`

### SELECT query

```
SELECT orders.date_created, SUM(order_product.quantity) as cnt
FROM orders
JOIN order_product ON orders.id = order_product.order_id
WHERE orders.status = 'shipped' AND orders.date_created > NOW() - INTERVAL '1 WEEK'
GROUP BY orders.date_created
ORDER BY orders.date_created desc;
```
