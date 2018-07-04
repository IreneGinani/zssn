class SurvivorsController < ApplicationController
    before_action :get_survivor, only: [:show]

    def show
        render json: @survivor
    end

    def create
        @survivor = Survivor.new(survivor_params)
        if @survivor.save
            render json: @survivor, status: :created, location: @survivor
        else
            render json: @survivor.errors, status: :unprocessable_entity
        end
    end

    private
    
    def get_survivor
        @survivor = Survivor.find(params[:id])
    end

    def survivor_params
        params.permit(:id, :name, :age, :gender, :latitude, :longitude, 
        :is_infected, :count_reports)
    end

end