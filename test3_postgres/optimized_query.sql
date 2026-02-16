SELECT count(*) 
FROM addresses 
WHERE user_id = 42;

SELECT * 
FROM addresses
WHERE user_id = 42 
ORDER BY created_at DESC;
