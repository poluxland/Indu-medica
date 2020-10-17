class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rut
      t.string :fono
      t.string :direccion
      t.string :sede
      t.string :otros

      t.timestamps
    end
  end
end
