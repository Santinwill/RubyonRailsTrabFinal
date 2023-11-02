class Recipient < ApplicationRecord
    belongs_to :catastrophes
    has_many :person
end
