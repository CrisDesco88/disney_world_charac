class CreatePeliculaSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :pelicula_series do |t|
      t.string :imagen
      t.string :titulo
      t.date :fecha_creacion
      t.integer :calificacion
      t.string :personaje_asoc

      t.timestamps
    end
  end
end
