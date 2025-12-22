with parsed_manifests as (
  select
    *,
    cardinality(xpath('/manifest/passengers/passenger', manifest_xml)) as passengers_count
  from travel_manifests
)
select
  vehicle_id,
  departure_time,
  sum(passengers_count)
from parsed_manifests
where vehicle_id ilike 'cargo%'
group by vehicle_id, departure_time
having sum(passengers_count) > 20
order by departure_time
