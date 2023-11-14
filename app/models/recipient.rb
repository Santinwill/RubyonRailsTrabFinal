class Recipient < ApplicationRecord
    belongs_to :catastrophe
    has_many :people
end
