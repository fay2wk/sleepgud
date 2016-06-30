r# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
wiki = Wiki.new
wiki.title = "Polyphasic Sleep"
wiki.body = "Polyphasic sleep is the practice of sleeping multiple times in a 24-hour period—usually more than two, in contrast to biphasic sleep (twice per day) or monophasic sleep (once per day). The term was first used in the early 20th-century by psychologist J. S. Szymanski, who observed daily fluctuations in activity patterns. It does not imply any particular sleep schedule. The circadian rhythm disorder known as irregular sleep-wake syndrome is an example of polyphasic sleep in humans. Polyphasic sleep is common in many animals, and is believed to be the ancestral sleep state for mammals, although simians are monophasic."
if wiki.save
  puts "record saved!"
end

wiki = Wiki.new
wiki.title = "Polyphasic Sleep"
wiki.body = "The Uberman Sleep Schedule (coined by Puredoxyk, the first Uberman sleeper) is a sleep schedule consisting entirely of 20 minute naps, spaced equidistant throughout the day. In its traditional form Uberman is 6 equidistant naps throughout each day. There is nothing known about the long term health effects of being an Uberman, although there have been people who sustained the schedule for as long as a year with no serious health issues."
if wiki.save
  puts "record saved!"
end
# Track.destroy_all
#
# Track.create  date: '2016-06-09', mood: 4, productivity: 5, hours: 6, user_id: 1
# Track.create  date: '2016-06-10', mood: 3, productivity: 3, hours: 4, user_id: 1
# Track.create  date: '2016-06-11', mood: 3, productivity: 4, hours: 4, user_id: 1
# Track.create  date: '2016-06-12', mood: 5, productivity: 4, hours: 3.5, user_id: 1
# Track.create  date: '2016-06-13', mood: 2, productivity: 2, hours: 5.5, user_id: 1
# Track.create  date: '2016-06-14', mood: 3, productivity: 3, hours: 5, user_id: 1
# Track.create  date: '2016-06-15', mood: 2, productivity: 2, hours: 6, user_id: 1
# Track.create  date: '2016-06-16', mood: 2, productivity: 1, hours: 7, user_id: 1
