json.array! @shops do |s|
  json.id s.id
  json.name s.name
  json.phone s.phone
  json.start_time s.start_time
  json.end_time s.end_time
  json.holiday s.holiday
  json.address s.address
  json.main_image s.main_image
end
