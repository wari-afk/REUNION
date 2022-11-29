class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :reunion
  acts_as_voter
end
