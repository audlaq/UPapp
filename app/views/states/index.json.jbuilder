json.array!(@states) do |state|
  json.extract! state, :id, :state, :district
  json.url state_url(state, format: :json)
end
