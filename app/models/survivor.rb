class Survivor < ApplicationRecord
    has_one :inventory
    has_many :inventory_items, through: :inventory

    validates :name, :age, :gender, :latitude, :longitude, presence: true

    accepts_nested_attributes_for :inventory

    scope :all_, -> {all}
    scope :infected, -> {where("is_infected = ?", true)}
    scope :no_infected, -> {where("is_infected = ?", false)}

    def self.avg_infected

        (infected.count.to_f / all_.count.to_f)*100

    end

end
