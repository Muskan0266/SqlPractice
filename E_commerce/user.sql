CREATE DATABASE e_comm;
USE e_comm;
CREATE TABLE users(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    age INT
);
INSERT INTO users (id, name, email, phone, age)
VALUES (
        1,
        'Muskan',
        '25muskaaan@gmail.com',
        '9650392784',
        20
    ),
    (
        2,
        'Kartik',
        'kartik12@gmail.com',
        '9876543212',
        28
    ),
    (
        3,
        'Hardik',
        'hardik12@gmail.com',
        '9765845632',
        20
    ),
    (
        4,
        'Drishti',
        'drishti12@gmail.com',
        '9876094532',
        25
    ),
    (5, 'Rosie', 'rosie12@gmail.com', 9875643987, 17),
    (6, 'Jenne', 'jenne12@gmail.com', 7865981234, 30);
-- order table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    id INT,
    product_name VARCHAR(100),
    amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (id) REFERENCES users(id)
);
INSERT INTO orders (order_id, id, product_name, amount, order_date)
VALUES (101, 1, 'Laptop', 55000.00, '2026-03-10'),
    (102, 2, 'Headphones', 2000.00, '2026-03-11'),
    (103, 1, 'Keyboard', 1500.00, '2026-03-12'),
    (104, 3, 'Mouse', 800.00, '2026-03-13');
SELECT name
FROM users
WHERE(age > 20);
SELECT age,
    COUNT(*) AS user_age
FROM users
GROUP BY age
ORDER BY age DESC;
SELECT name
FROM users
LIMIT 2 OFFSET 3;
-- update
UPDATE users
SET name = "Rista"
WHERE age = 17
select name
from users;
delete from users
where id = 2;
select *
from users;
alter table users
add purchases int;
alter table u
    rename to users;
alter table users drop age;
drop table orders;
drop table users;
-- Joins
SELECT *
FROM users AS U
    INNER JOIN orders AS O ON U.id = O.id;
SELECT *
FROM users AS U
    RIGHT JOIN orders AS O ON U.id = O.order_id;
SELECT *
FROM users
    LEFT JOIN orders ON users.id = orders.id;
SELECT *
FROM users
    FULL JOIN orders ON users.id = orders.id;
SELECT *
FROM users
    LEFT JOIN orders ON users.id = orders.id
UNION
SELECT *
FROM users
    RIGHT JOIN orders ON users.id = orders.id;
SELECT id
FROM users
UNION ALL
SELECT id
FROM orders