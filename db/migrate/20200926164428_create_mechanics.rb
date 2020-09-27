class CreateMechanics < ActiveRecord::Migration[5.2]
  def change
    create_table :mechanics do |t|
      t.string :name, null: false
      t.string :mobile_number, null: false
      t.string :email
      t.text :specialization
      t.string :gender
      t.string :location, null: false

      t.timestamps
    end

    add_index :mechanics, [:mobile_number], :unique => true
  end
end
