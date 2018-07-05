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

end