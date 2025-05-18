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

### Создание пользователя и выдача прав для автотестов

```sql
-- Создать пользователя
CREATE USER autotest WITH PASSWORD 'autotestpass';

-- Выдать права на базу данных
GRANT ALL PRIVILEGES ON DATABASE store TO autotest;

-- Выдать права на схему public
GRANT ALL PRIVILEGES ON SCHEMA public TO autotest;

-- Выдать права на все таблицы в схеме public
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO autotest;

-- Выдать права на все последовательности (для автоинкрементов)
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO autotest;

-- Чтобы новые таблицы автоматически получали права для autotest
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO autotest;

-- Чтобы новые последовательности автоматически получали права для autotest
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO autotest;
```

### SELECT query

```