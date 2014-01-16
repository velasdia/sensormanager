class CategoriaEquipo < ActiveRecord::Base
  has_many :Concentrador
  validates :nombre, uniqueness:true
  validates :nombre, format: { with: /\A[a-zA-Z0-9.-_ ]+\Z/, message: "Formato no valido" }
end

