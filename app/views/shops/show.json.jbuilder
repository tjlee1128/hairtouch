json.id @shop.id
json.name @shop.name
json.phone @shop.phone
json.start_time @shop.start_time
json.end_time @shop.end_time
json.holiday @shop.holiday
json.address @shop.address
json.main_image @shop.main_image
json.review do
  json.count @shop.shopreview.count
  if @shop.shopreview.count > 0
    json.grade @shop.shopreview.average(:grade)
  else
    json.grade 0
  end
end

json.designers @shop.designer do |d|
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
      json.grade 0
    end
  end
end

json.reviews @shop.shopreview do |sr|
  json.id sr.id
  json.member do
    json.member_id sr.member.id
    json.member_name sr.member.name
  end
  json.created_at sr.created_at
  json.detail sr.detail
  json.image sr.image
  json.grade sr.grade
end
