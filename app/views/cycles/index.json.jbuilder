json.array!(@cycles) do |cycle|
  json.extract! cycle, :id, :cycle_name, :days, :user_id
  json.url cycle_url(cycle, format: :json)
end
