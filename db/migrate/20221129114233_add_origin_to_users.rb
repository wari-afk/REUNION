class AddOriginToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :city_of_origin, :string
    add_column :users, :name, :string
  end
end
