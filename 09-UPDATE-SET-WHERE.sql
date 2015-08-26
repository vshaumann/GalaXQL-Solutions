BEGIN;
UPDATE stars
SET x=z, z=x
WHERE starid>10000 AND starid<15000
