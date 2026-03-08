CREATE DATABASE e_comm;
USE e_comm;
CREATE TABLE users(
    id INT,
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