class VisitSerializer < ActiveModel::Serializer
  attributes :date, :notes, :park_id
  has_one :park
end
