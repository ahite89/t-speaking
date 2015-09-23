class Symbol < ActiveRecord::Base
  belongs_to :question

  validates :question, presence: true
  validates :name, presence: true
  validates :left, presence: true
  validates :top, presence: true
end
