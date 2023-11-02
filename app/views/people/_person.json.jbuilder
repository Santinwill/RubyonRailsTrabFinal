json.extract! person, :id, :person_code, :name, :identification_number, :street, :city, :state, :zip_code, :complement, :email, :phone, :created_at, :updated_at
json.url person_url(person, format: :json)
