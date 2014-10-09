class Serie
  include Mongoid::Document
  field :nombre, type: String
  field :género, type: Array

  embeds_many :temporadas
end
