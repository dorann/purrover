class Brewer < ApplicationRecord
    belongs_to :user
    has_many :brews
end
