class VisitsController < ApplicationController
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
            render json: visit, except: [:created_at, :updated_at]
        else 
            flash.now[:error] = "Error: Visit could not be saved!"
        end
    end

    def update 
        visit = Visit.find_by(id: params[:id])
        visit.update(visit_params)
        if visit.save
            render json: visit, except: [:created_at, :updated_at]
        else 
            flash.now[:error] = "Error: Visit could not be updated!"
        end
    end

    def destroy
        visit = Visit.find_by(id: params[:id])
        visit.delete
        render json: visit, only: [:id] #only or include?
    end

    private

    def visit_params
        params.require(:date, :notes)
    end
end
