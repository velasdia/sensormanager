class CreateMedidas < ActiveRecord::Migration
  def change
    create_table :medidas do |t|
      t.belongs_to :Sensor, index: true
      t.timestamps :fecha
      t.float :valor

      t.timestamps
    end
  end
end
