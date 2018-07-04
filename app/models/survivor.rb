class Survivor < ApplicationRecord
    has_one :inventory

    validates :name, :age, :gender, :latitude, :longitude, presence: true
end
