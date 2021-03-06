class Sensor < ActiveRecord::Base
  belongs_to :Concentrador
  has_many :Medida
  validates :nombre, uniqueness:true
  validates :nombre, format: { with: /\A[a-zA-Z0-9.-_ ]+\Z/, message: "Formato no valido" } 
end
