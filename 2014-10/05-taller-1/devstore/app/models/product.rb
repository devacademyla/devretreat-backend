class Product
  include Mongoid::Document
  field :name, type: String
  field :descripcion, type: String
  field :price, type: Float
end
