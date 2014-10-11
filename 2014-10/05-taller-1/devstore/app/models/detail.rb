class Detail
  include Mongoid::Document
  field :vitaminC, type: Integer
  field :potassium, type: Integer
  field :fiber, type: Integer

  embedded_in :product
end
