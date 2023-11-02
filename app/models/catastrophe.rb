class Catastrophe < ApplicationRecord
    has_many :person
    has_many :recipients
end
