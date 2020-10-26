class DropLocationFromMechanic < ActiveRecord::Migration[5.2]
  def change
    remove_column :mechanics, :location
  end
end
