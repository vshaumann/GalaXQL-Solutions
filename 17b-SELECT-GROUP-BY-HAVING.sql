SELECT stars.starid, stars.name, COUNT(planets.starid+moons.planetid) as orbitals
FROM stars
INNER JOIN planets ON
stars.starid = planets.starid
INNER JOIN moons ON
planets.planetid=moons.planetid
GROUP BY stars.starid
ORDER BY orbitals
DESC;
