json.array!(@companies) do |company|
  json.extract! company, :id, :name, :country_code, :favorites_count
  json.url company_url(company, format: :json)
end
