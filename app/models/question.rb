class Question < ActiveRecord::Base
  acts_as_taggable

  mount_uploader :score, ScoreUploader
  mount_uploader :audio, AudioUploader

  has_many :answers
  belongs_to :user
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: true
  validates :category, presence: true

  def self.search(query)
    where("title ilike ?", "%#{query}%")
  end

  def self.search_message
    count = self.count
    if count == 0
      "No questions matching that search!"
    end
  end
end
