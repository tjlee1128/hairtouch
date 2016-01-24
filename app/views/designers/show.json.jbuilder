json.id @designer.id
json.name @designer.name
json.phone @designer.phone
json.start_time @designer.start_time
json.end_time @designer.end_time
json.reservation_type @designer.reservation_type
json.main_image @designer.main_image
json.image @designer.image
json.review do
  json.count @designer.designerreview.count
  if @designer.designerreview.count > 0
    json.grade @designer.designerreview.average(:grade)
  else
    json.grade '0'
  end
end

json.hairs @designer.hairs do |h|
  json.id h.id
  json.designer_id h.designer_id
  json.mainregion_id h.mainregion_id
  json.subregion_id h.subregion_id
  json.haircategorycode_id h.haircategorycode_id
  json.haircategory_id h.haircategory_id
  json.title h.title
  json.subtitle h.subtitle
  json.detail h.detail
  json.images h.hairimages do |hi|
    json.image hi.image
  end
end

json.reviews @designer.designerreview do |dr|
  json.id dr.id
  json.member do
    json.member_id = dr.member.id
    json.member_name = dr.member.name
  end
  json.created_at dr.created_at
  json.detail dr.detail
  json.image dr.image
  json.grade dr.grade
end
