json.array!(@skils) do |skil|
  json.extract! skil, :id, :name, :level
  json.url skil_url(skil, format: :json)
end
