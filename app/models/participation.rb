class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :reunion

  validates :user, uniqueness: { scope: :reunion }

  acts_as_voter
end
