class Api::V1::VisitsController < ApplicationController
    def index
        visits = Visit.all 
        render json: VisitSerializer.new(visits).to_serialized_json
    end

    def show
        visit = Visit.find_by(id: params[:id])
        render json: VisitSerializer.new(visit).to_serialized_json
    end

    def create
        visit = Visit.new(visit_params)
        if visit.save
            render json: VisitSerializer.new(visit).to_serialized_json
        end
    end

    private

    def visit_params
        params.require(:visit).permit(:date, :notes, :park_id)
    end
end
