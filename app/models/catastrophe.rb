class Catastrophe < ApplicationRecord
    has_many :people
    has_many :recipients
end
