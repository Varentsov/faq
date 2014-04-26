json.array!(@questions) do |question|
  json.extract! question, :id, :title, :body, :views_count, :rating
  json.url question_url(question, format: :json)
end
