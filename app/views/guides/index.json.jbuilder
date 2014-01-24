json.array!(@guides) do |guide|
  json.extract! guide, :id, :guide_for, :guide_name, :info
  json.url guide_url(guide, format: :json)
end
