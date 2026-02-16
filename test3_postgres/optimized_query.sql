SELECT count(*) 
FROM addresses 
WHERE user_id = 43;

SELECT * 
FROM addresses
WHERE user_id = 43 
ORDER BY created_at DESC;
