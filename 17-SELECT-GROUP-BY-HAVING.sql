SELECT stars.starid AS starid, 
COUNT(planets.planetid) + COUNT(moons.planetid) AS orbitals 
FROM planets, stars, moons 
WHERE stars.starid=planets.starid 
AND planets.planetid=moons.planetid 
GROUP BY stars.starid;