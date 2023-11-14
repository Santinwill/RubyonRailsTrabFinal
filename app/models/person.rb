class Person < ApplicationRecord
    belongs_to :catastrophe
    has_many :recipients
end
