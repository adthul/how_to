json.array!(@steps) do |step|
  json.extract! step, :id, :step_number, :step_name, :content
  json.url step_url(step, format: :json)
end
