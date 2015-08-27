SELECT Stars.name AS starname,
(Stars.class + 7) * Stars.intensity * 1000000 AS startemp, 
Planets.name AS planetname, 
((Stars.class + 7) * Stars.intensity * 1000000) - (50 * Planets.orbitDistance) AS planettemp
FROM Stars
LEFT JOIN Planets
ON Planets.starId = Stars.starId
WHERE Stars.starId > 500 AND Stars.starId < 600
