json.array!(@xmls) do |xml|
  json.extract! xml, :id, :key_access, :xml_text
  json.url xml_url(xml, format: :json)
end
