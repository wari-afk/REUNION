class Reunion < ApplicationRecord
  belongs_to :user
  has_many :date_options, dependent: :destroy
  has_many :participations
end
