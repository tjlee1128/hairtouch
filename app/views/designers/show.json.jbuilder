json.id @designer.id
json.name @designer.name
json.phone @designer.phone
json.start_time @designer.start_time
json.end_time @designer.end_time
json.reservation_type @designer.reservation_type
json.main_image @designer.main_image
json.review do
  json.count @designer.designerreview.count
  if @designer.designerreview.count > 0
    json.grade @designer.designerreview.average(:grade)
  else
    json.grade 0
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
