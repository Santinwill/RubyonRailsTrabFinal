class Person < ApplicationRecord
    belongs_to :catastrophes
    has_many :recipients
end
