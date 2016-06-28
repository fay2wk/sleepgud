json.array!(@sleep_cycles) do |sleep_cycle|
  json.extract! sleep_cycle, :id, :cycle_name, :days, :user_id
  json.url sleep_cycle_url(sleep_cycle, format: :json)
end
