class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.belongs_to :Concentrador, index: true
      t.string :nombre
      t.string :descripcion
      t.string :estado
      t.string :parametro
      t.float :valor
      t.string :uds
      t.float :gis_latitud
      t.float :gis_longitud

      t.timestamps
    end
  end
end
