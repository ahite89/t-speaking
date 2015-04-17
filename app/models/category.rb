class Category < ActiveRecord::Base

  has_many :questions
  has_many :chords

  validates :name, presence: true, uniqueness: true

end
