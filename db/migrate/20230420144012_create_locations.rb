class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :direccion
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
