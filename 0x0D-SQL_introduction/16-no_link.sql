-- for this cmmd if the row have the name value fetch it
SELECT `score`, `name`
FROM `second_table`
WHERE `name` != ""
ORDER BY `score` DESC
