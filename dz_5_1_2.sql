-- Очистим таблицу users
TRUNCATE users;

-- Изменим тип данных у столбцов created_at и updated_at на VARCHAR
ALTER TABLE users MODIFY COLUMN created_at VARCHAR(100);
ALTER TABLE users MODIFY COLUMN updated_at VARCHAR(100);
DESC users;

-- Заполним таблицу users
INSERT INTO users(first_name, last_name, created_at, updated_at) VALUES('Иван', 'Петров', '20.10.2017 8:10', '22.01.2018 12:15');
INSERT INTO users(first_name, last_name, created_at, updated_at) VALUES('Александр', 'Смирнов', '02.02.2019 15:15', '03.02.2020 16:13');
INSERT INTO users(first_name, last_name, created_at, updated_at) VALUES('Дарья', 'Васильева', '05.03.2021 21:16', '20.01.2022 02:45');
INSERT INTO users(first_name, last_name, created_at, updated_at) VALUES('Мария', 'Попова', '01.01.2022 12:12', '01.09.2022 15:15');
SELECT * FROM users;
UPDATE users SET updated_at = '20.01.2022 2:45' WHERE id = 3;

-- Изменим тип данных у created_at и updated_at на DATETIME и перезапишем данные в правильном формате
ALTER TABLE users ADD created_at_dt DATETIME;
ALTER TABLE users ADD updated_at_dt DATETIME;
UPDATE users SET created_at_dt = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i');
UPDATE users SET updated_at_dt = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');
ALTER TABLE users
	DROP created_at, DROP updated_at,
    RENAME COLUMN created_at_dt TO created_at, RENAME COLUMN updated_at_dt TO updated_at;
SELECT * FROM users;