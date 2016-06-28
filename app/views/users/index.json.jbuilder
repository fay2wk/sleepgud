json.array!(@users) do |user|
  json.extract! user, :id, :name, :birthdate, :email, :gender, :password_digest, :bio
  json.url user_url(user, format: :json)
end
