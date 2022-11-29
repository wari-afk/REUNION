class Reunion < ApplicationRecord
  belongs_to :user
  has_many :date_option
end
