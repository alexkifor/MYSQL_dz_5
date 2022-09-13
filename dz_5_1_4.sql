-- В таблицу users добавляется столбец bithday_at
ALTER TABLE users ADD birthday_at VARCHAR(30);

-- Заполним столбец birhday_at
UPDATE users SET birthday_at = '17 may 2003' WHERE id = 1;
UPDATE users SET birthday_at = '01 june 1994' WHERE id = 2; 
UPDATE users SET birthday_at = '17 august 1985' WHERE id = 3;
UPDATE users SET birthday_at = '31 mach 1999' WHERE id = 4;  
SELECT * FROM users;

SELECT id, first_name, last_name FROM users WHERE(birthday_at LIKE '%may%' OR birthday_at LIKE '%august%');    