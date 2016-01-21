json.array! @shops do |s|
  json.id s.id
  json.name s.name
  json.phone s.phone
  json.start_time s.start_time
  json.end_time s.end_time
  json.holiday s.holiday
  json.address s.address
  json.main_image s.main_image
  json.image s.image

  json.review do
    json.count s.shopreview.count
    if s.shopreview.count > 0
      json.grade s.shopreview.average(:grade)
    else
      json.grade '0'
    end
  end
end
