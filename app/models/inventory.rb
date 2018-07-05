class Inventory < ApplicationRecord
  belongs_to :survivor
  has_many :inventory_items
  has_many :items, through: :inventory_items

  accepts_nested_attributes_for :inventory_items
end
