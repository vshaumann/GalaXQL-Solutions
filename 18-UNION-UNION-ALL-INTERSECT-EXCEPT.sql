SELECT starid
FROM planets
INTERSECT
SELECT 3*starid
FROM planets
INTERSECT
SELECT starid
FROM planets
EXCEPT
SELECT 2*starid
FROM planets