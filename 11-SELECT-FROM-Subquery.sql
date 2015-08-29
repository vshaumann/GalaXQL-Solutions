BEGIN;
INSERT INTO hilight 
SELECT stars.starid 
FROM stars, planets, 
(SELECT MAX(orbitdistance) AS mo FROM planets) 
WHERE planets.orbitdistance = mo 
AND planets.starid = stars.starid;
