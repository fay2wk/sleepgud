json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_name, :text
  json.url comment_url(comment, format: :json)
end
