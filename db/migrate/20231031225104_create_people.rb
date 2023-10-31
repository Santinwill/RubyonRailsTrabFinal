class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.integer :person_code
      t.string :name
      t.string :identification_number
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :complement
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
