class SurvivorsController < ApplicationController
    before_action :get_survivor, only: [:show, :update, :report]

    def show
        render json: @survivor
    end

    def update

        if @survivor.update(survivor_location_params)
            render json: @survivor
          end
    end

    def report
        puts @survivor
        @survivor.count_reports += 1

        if (@survivor.count_reports == 3)
            @survivor.is_infected = true
        end

        if @survivor.save
            render json: @survivor
        end
       
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
        :is_infected, :count_reports,  inventory_attributes: [
            inventory_resources_attributes: [
              :resource_id
            ]
        ])
    end

    def survivor_location_params
        params.permit(:latitude, :longitude)
    end


end