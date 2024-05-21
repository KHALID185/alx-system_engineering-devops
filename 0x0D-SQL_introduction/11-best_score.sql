--give me a list of all users with score above or equal 10
-- in the second table
SELECT `score`, `name`
FROM `second_table`
WHERE `score` >= 10
ORDER BY `score` DESC;
