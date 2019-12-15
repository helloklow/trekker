class VisitSerializer < ActiveModel::Serializer
  attributes :id, :date, :notes
  has_one :park

  def initialize(visit_obj)
    @visit = visit_obj
  end

  def to_serialized_json 
      @visit.to_json(:include => {
          :park => {:except => [:created_at, :updated_at]}
      }, :except => [:created_at, :updated_at])
  end
end
