class AddHasVotedDatesToParticipations < ActiveRecord::Migration[7.0]
  def change
    add_column :participations, :has_voted_dates, :boolean
  end
end
