json.mainregion @mainregions do |mr|
  json.id mr.id
  json.name mr.name
end

json.subregion @subregions do |sr|
  json.id sr.id
  json.name sr.name
  json.mainregion_id sr.mainregion_id
end
