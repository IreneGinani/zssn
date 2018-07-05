class ReportsController < ApplicationController
    def average_infected
        render json: {
                description: "Average of infected people",
                percentage: Survivor.avg_infected
        }
    end
    def average_no_infected
        render json: {
                description: "Average of no infected people",
                percentage: Survivor.avg_no_infected
        }
    end

    def item_person
        render json: {

                description: "Average of items per person",
                avg_ammunition: Survivor.item_person(1),
                avg_medication: Survivor.item_person(2),
                avg_food: Survivor.item_person(3),
                avg_water: Survivor.item_person(4),
        }
    end

    def lost_points
        render json: {
                description: "Average of no infected people",
                percentage: Survivor.avg_no_infected
        }
    end

end