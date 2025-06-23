class Brew < ApplicationRecord
    has_many :pours, dependent: :destroy
    belongs_to :brewer
end
