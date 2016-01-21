json.extract! @hair, :id, :designer_id, :mainregion_id, :subregion_id, :haircategorycode_id, :haircategory_id, :title, :subtitle, :detail
json.images @hair.hairimages do |h|
  json.image h.image
end
