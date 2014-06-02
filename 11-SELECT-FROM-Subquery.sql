BEGIN;
INSERT INTO hilight 
SELECT stars.starid 
FROM stars, planets, 
(SELECT MAX(orbitdistance) AS mo FROM planets) 
WHERE planets.orbitdistance = mo 
AND planets.starid = stars.starid;

BEGIN; 
INSERT INTO hilight 
SELECT DISTINCT stars.starid 
FROM stars, planets, moons, 
(SELECT MAX(planets.orbitdistance) as mo 
FROM planets) 
WHERE mo = planets.orbitdistance 
AND planets.starid = stars.starid