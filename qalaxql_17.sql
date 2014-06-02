SELECT stars.starid, stars.name, COUNT(*)
FROM stars
INNER JOIN planets ON
stars.starid = planets.starid
INNER JOIN moons ON
planets.planetid=moons.planetid
GROUP BY stars.starid, stars.name
ORDER BY COUNT(*)
DESC