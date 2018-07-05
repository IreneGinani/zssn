class Survivor < ApplicationRecord
    has_one :inventory
    has_many :inventory_items, through: :inventory

    validates :name, :age, :gender, :latitude, :longitude, presence: true

    accepts_nested_attributes_for :inventory
end
