class Api::V1::ParksController < ApplicationController
    def index 
        parks = Park.all 
        render json: ParkSerializer.new(parks).to_serialized_json
    end
    
    def show
        park = Park.find_by(id: params[:id])
        render json: ParkSerializer.new(park).to_serialized_json
    end
end
