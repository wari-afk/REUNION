class AddDescriptionToReunions < ActiveRecord::Migration[7.0]
  def change
    add_column :reunions, :description, :text
  end
end
