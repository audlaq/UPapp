json.array!(@politicians) do |politician|
  json.extract! politician, :id, :name, :image, :position1, :position2, :state, :district, :party, :sworn_in, :person_defeated, :votes_w_party, :votes_vs_party, :abstains
  json.url politician_url(politician, format: :json)
end
