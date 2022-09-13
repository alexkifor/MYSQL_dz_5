-- Скопируем таблицу users в users_copy и изменим тип данных birthday_at
DROP TABLE IF EXISTS users_copy;
CREATE TABLE users_copy SELECT * FROM users;
UPDATE users_copy SET birthday_at  = STR_TO_DATE(birthday_at, '%d %M %Y');

-- Посчитаем средний во
ALTER TABLE users_copy ADD years INT;
UPDATE users_copy SET years = DATE_FORMAT(CURRENT_DATE, '%Y') - DATE_FORMAT(birthday_at, '%Y');
SELECT FLOOR(AVG(years)) FROM users_copy;