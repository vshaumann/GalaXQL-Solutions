SELECT starid, x, y, z
FROM stars
WHERE x > 0
AND
starid < 100
ORDER BY y
ASC