class Concentrador < ActiveRecord::Base
  belongs_to :CategoriaEquipo
  has_many :Sensor
  validates :nombre, uniqueness:true
  validates :nombre, format: { with: /\A[a-zA-Z0-9.-_ ]+\Z/, message: "Formato no valido" }
end
