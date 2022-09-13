SELECT DATE_FORMAT(
STR_TO_DATE(
CONCAT_WS('.',
DATE_FORMAT(birthday_at, '%d'),
DATE_FORMAT(birthday_at, '%m'),
DATE_FORMAT(NOW(), '%Y')),
'%d.%m.%Y'), '%W') AS WeekDay,
COUNT(*) FROM users_copy
GROUP BY WeekDay
;