json.array!(@tracks) do |track|
  json.extract! track, :id, :date, :mood, :hours, :productivity, :notes, :cycle_id
  json.url track_url(track, format: :json)
end
