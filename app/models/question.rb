class Question < ActiveRecord::Base

  mount_uploader :score, ScoreUploader
  mount_uploader :audio, AudioUploader

  has_many :answers
  has_many :symbols

  belongs_to :user
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: true
  validates :category, presence: true
end
