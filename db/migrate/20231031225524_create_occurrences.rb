class CreateOccurrences < ActiveRecord::Migration[5.2]
  def change
    create_table :occurrences do |t|
      t.integer :occurrence_code
      t.integer :person_code
      t.integer :catastrophe_code

      t.timestamps
    end
  end
end
