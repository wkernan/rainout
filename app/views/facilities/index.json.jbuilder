json.array!(@facilities) do |facility|
  json.extract! facility, :id, :name, :abbr, :status, :message
  json.url facility_url(facility, format: :json)
end
