class DateOption < ApplicationRecord
  belongs_to :reunion
  acts_as_votable
end
