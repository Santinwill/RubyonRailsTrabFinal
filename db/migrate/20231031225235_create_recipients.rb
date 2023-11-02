class CreateRecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipients do |t|
      t.integer :family_quantity
      t.integer :liter_of_water
      t.integer :basic_basket
      t.integer :tile
      t.string :measure
      t.string :unit_of_measurement

      t.timestamps
    end
  end
end
