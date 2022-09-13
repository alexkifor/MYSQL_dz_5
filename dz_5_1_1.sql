-- Создаем таблицу users
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  created_at DATETIME COMMENT "Время создания строки",  
  updated_at DATETIME COMMENT "Время обновления строки"
) COMMENT "Пользователи";

-- Заполним таблицу users
INSERT INTO users(first_name, last_name) VALUES ('Игорь', 'Васисльев');
INSERT INTO users(first_name, last_name) VALUES ('Александр', 'Петров');
INSERT INTO users(first_name, last_name) VALUES ('Дарья', 'Морозова');
SELECT * FROM users;

-- Заполним столбцы created_at и updated_at текущей датой и временем
UPDATE users SET created_at = NOW(), updated_at = NOW();

    
