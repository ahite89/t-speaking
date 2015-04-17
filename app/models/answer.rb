class Answer < ActiveRecord::Base

  belongs_to :question
  belongs_to :user

  validates :content, presence: true
  validates :user, presence: true
  validates :question, presence: true

end
