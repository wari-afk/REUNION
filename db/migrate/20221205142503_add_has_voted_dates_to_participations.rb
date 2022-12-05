class AddHasVotedDatesToParticipations < ActiveRecord::Migration[7.0]
  def change
    add_column :participations, :has_voted__on_dates, :boolean
  end
end
