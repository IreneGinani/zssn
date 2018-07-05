class ReportsController < ApplicationController
    def average_infected
        render json: {
                description: "Average of infected people",
                percentage: Survivor.avg_infected
        }
    end

end