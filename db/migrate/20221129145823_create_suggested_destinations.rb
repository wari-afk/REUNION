class CreateSuggestedDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :suggested_destinations do |t|
      t.integer :price
      t.string :destination_city
      t.integer :travel_time
      t.references :date_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
