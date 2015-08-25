BEGIN;

CREATE VIEW v_orbital AS
SELECT stars.starid, COUNT(planets.planetid)+COUNT(moons.planetid) AS orbitals
FROM stars
LEFT OUTER JOIN planets ON stars.starid=planets.starid
LEFT OUTER JOIN moons ON planets.planetid=moons.planetid
GROUP BY stars.starid;

INSERT INTO hilight
SELECT starid
FROM v_orbital
WHERE orbitals=(SELECT MAX(orbitals) FROM v_orbital);

DROP VIEW v_orbital;
