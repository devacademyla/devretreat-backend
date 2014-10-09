class Temporada
  include Mongoid::Document
  field :nombre, type: String
  field :capitulos, type: Integer
end
