class Serie
  include Mongoid::Document
  field :nombre, type: String

  embeds_many :temporadas
end
