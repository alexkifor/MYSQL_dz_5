-- Создадим таблицу складских остатков
DROP TABLE IF EXISTS storehouses_products; 
CREATE TABLE storehouses_products (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) DEFAULT NULL,
  value INT);
  
-- Наполним столбец value случайными данными
INSERT INTO storehouses_products (value) VALUES
  (1), (25), (0), (48), (155), (0), (1584), (99), (485), (0), (12), (10521); 
SELECT * FROM storehouses_products ORDER BY CASE WHEN value = 0 THEN TRUE ELSE FALSE END, value; 

  