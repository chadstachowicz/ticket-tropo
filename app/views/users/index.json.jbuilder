json.array!(@users) do |user|
  json.extract! user, :id, :name, :mobile_number, :email
  json.url user_url(user, format: :json)
end
