json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :profile_url, :pic_url, :current_rel_status
  json.url listing_url(listing, format: :json)
end
