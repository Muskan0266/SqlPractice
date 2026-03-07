CREATE DATABASE e_comm;
USE e_comm;
CREATE TABLE users(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15)
);
INSERT INTO users (id, name, email, phone)
VALUES (
        1,
        'Muskan',
        '25muskaaan@gmail.com',
        '9650392784'
    ),
    (2, 'Kartik', 'kartik12@gmail.com', '9876543212'),
    (3, 'Hardik', 'hardik12@gmail.com', '9765845632'),
    (
        4,
        'Drishti',
        'drishti12@gmail.com',
        '9876094532'
    );
SELECT *
FROM users;