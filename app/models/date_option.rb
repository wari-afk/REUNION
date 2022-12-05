class DateOption < ApplicationRecord
  belongs_to :reunion
  acts_as_votable

  def score
    self.get_upvotes.size - self.get_downvotes.size
  end
end
