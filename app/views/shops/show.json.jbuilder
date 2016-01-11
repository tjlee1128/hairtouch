json.id @shop.id
json.name @shop.name
json.phone @shop.phone
json.start_time @shop.start_time
json.end_time @shop.end_time
json.holiday @shop.holiday
json.address @shop.address
json.main_image @shop.main_image

json.designers @designers do |d|
  json.id d.id
  json.name d.name
  json.phone d.phone
  json.start_time d.start_time
  json.end_time d.end_time
  json.reservation_type d.reservation_type
  json.main_image d.main_image
end

json.reviews @shopreviews do |rv|
  json.id rv.id
  json.member_id rv.member_id
  json.created_at rv.created_at
  json.detail rv.detail
  json.image rv.image
  json.grade rv.grade
end
