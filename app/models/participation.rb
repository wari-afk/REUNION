class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :reunion
  acts_as_voter
  
  validates :user_id, presence: true
  validates :reunion_id, presence: true
end
