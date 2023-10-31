class CreateCatastrophes < ActiveRecord::Migration[5.2]
  def change
    create_table :catastrophes do |t|
      t.integer :catastrophe_code
      t.string :name
      t.integer :degree_of_emergency

      t.timestamps
    end
  end
end
