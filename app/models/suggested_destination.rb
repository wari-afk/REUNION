class SuggestedDestination < ApplicationRecord
  belongs_to :date_option
  acts_as_votable
end
