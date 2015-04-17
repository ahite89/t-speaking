class Question < ActiveRecord::Base
  acts_as_taggable
  mount_uploader :score, ScoreUploader

  has_many :answers
  belongs_to :user
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: true
  validates :category, presence: true

end
