json.array! @designers do |d|
  json.id d.id
  json.name d.name
  json.phone d.phone
  json.start_time d.start_time
  json.end_time d.end_time
  json.reservation_type d.reservation_type
  json.main_image d.main_image

  json.review do
    json.count d.designerreview.count
    if d.designerreview.count > 0
      json.grade d.designerreview.average(:grade)
    else
      json.grade '0'
    end
  end
end
