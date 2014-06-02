BEGIN;
INSERT INTO hilight
SELECT DISTINCT stars.starid 
FROM stars, planets, moons 
WHERE stars.starid > 20000 
AND stars.starid=planets.starid 
AND planets.planetid = moons.planetid 
AND moons.orbitdistance > 3000
