SELECT player_id, TO_CHAR(MIN(event_date)) AS first_login
FROM Activity
GROUP BY player_id;
