# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# json = Chord.save_data_from_api
# new_chord_array = []
# json.each { |row| new_chord_array << [row["chord_HTML"], row["probability"]] }
# new_chord_array.each { |chord| Chord.create(first_chord: chord.first, first_chord_probability: chord.last) }



Category.find_or_create_by!(name: "Key")
Category.find_or_create_by!(name: "Intervals")
Category.find_or_create_by!(name: "Chords")
Category.find_or_create_by!(name: "Rhythm")
Category.find_or_create_by!(name: "Dynamics")
Category.find_or_create_by!(name: "Analysis")
Category.find_or_create_by!(name: "Serialism")
Category.find_or_create_by!(name: "Counterpoint")
Category.find_or_create_by!(name: "Modulation")
Category.find_or_create_by!(name: "Scales")
Category.find_or_create_by!(name: "Modes")
Category.find_or_create_by!(name: "Form")


user = User.find_by(email: "musicguy@gmail.com")
if user.blank?
  user = User.new(email: "musicguy@gmail.com", password: "12345678", password_confirmation: "12345678")
  user.save
end


Question.find_or_create_by!(title: "The diminished 5th of C", user: user, category: Category.find_by(name: "Intervals"), description: "For whatever reason, I can't figure this out. Somebody please help me!")
Question.find_or_create_by!(title: "Modulating from F minor to A major", user: user, category: Category.find_by(name: "Modulation"), description: "For whatever reason, I can't figure this out. Somebody please help me!")
Question.find_or_create_by!(title: "G minor 7th add 9", user: user, category: Category.find_by(name: "Chords"), description: "For whatever reason, I can't figure this out. Somebody please help me!")
Question.find_or_create_by!(title: "Perfect unison versus perfect octaves", user: user, category: Category.find_by(name: "Intervals"), description: "For whatever reason, I can't figure this out. Somebody please help me!")
Question.find_or_create_by!(title: "Leading tones in a cantus firmus", user: user, category: Category.find_by(name: "Counterpoint"), description: "For whatever reason, I can't figure this out. Somebody please help me!")
Question.find_or_create_by!(title: "Fourth species counterpoint - harmonies", user: user, category: Category.find_by(name: "Counterpoint"), description: "For whatever reason, I can't figure this out. Somebody please help me!")
Question.find_or_create_by!(title: "Key signature for Eb minor", user: user, category: Category.find_by(name: "Key"), description: "For whatever reason, I can't figure this out. Somebody please help me!")
