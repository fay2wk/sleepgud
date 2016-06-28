json.array!(@tracks) do |track|
  json.extract! track, :id, :date, :day, :hours, :mood, :product, :notes, :sleep_cycle_id
  json.url track_url(track, format: :json)
end
