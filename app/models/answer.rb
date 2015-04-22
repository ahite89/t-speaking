class Answer < ActiveRecord::Base
  acts_as_votable

  belongs_to :question
  belongs_to :user

  validates :content, presence: true
  validates :user, presence: true
  validates :question, presence: true

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

end
