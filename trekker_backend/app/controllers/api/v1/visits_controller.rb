class Api::V1::VisitsController < ApplicationController
    def index
        visits = Visit.all 
        render json: visits.to_json(include: [:park])
    end

    def show
        visit = Visit.find_by(id: params[:id])
        render json: visit.to_json(include: [:park])
    end

    def create
        visit = Visit.new(visit_params)
        if visit.save
            render json: visit, except: [:created_at, :updated_at]
        end
    end

    private

    def visit_params
        params.require(:visit).permit(:date, :notes, :park_id)
    end
end
