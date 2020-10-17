class CreateEquipos < ActiveRecord::Migration[6.0]
  def change
    create_table :equipos do |t|
      t.string :modelo_ue
      t.string :modelo_ui
      t.string :ubicacion_ue
      t.string :ubicacion_ui
      t.string :año
      t.string :serie
      t.string :gas
      t.string :voltaje
      t.string :oficinas
      t.string :nombre_oficinas
      t.string :unidad_master
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
