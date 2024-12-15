CREATE EXTENSION Postgis;

select
    timestamp,
    place_name as area
from areas
	cross join sleigh_locations
where ST_Intersects(coordinate, polygon);