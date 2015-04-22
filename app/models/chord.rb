class Chord < ActiveRecord::Base

  belongs_to :category

  def self.save_data_from_api
    response = HTTParty.get("http://www.hooktheory.com/api/trends/stats")
    first_chord = response.each { |row| row["chord_HTML"] }
    first_chord_probability = response.each { |row| row["probability"]}
  end
end
