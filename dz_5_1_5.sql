-- Создадим таблицу catalogs
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) DEFAULT NULL,
  value INT DEFAULT NULL,
  price INT DEFAULT NULL,
  create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);
  
  -- Заполним таблицу catalogs
  INSERT INTO catalogs(name, value, price) VALUES
    ('Процессор', 10, 22500),
    ('Оперативная память', 21, 5200),
    ('Материнская плата', 15, 18000),
    ('Жесткий диск', 30, 7800),
    ('Блок питания', 6, 4150);
  SELECT * FROM catalogs WHERE id IN(5, 1, 2) ORDER BY id=2, id=1, id=5;
  