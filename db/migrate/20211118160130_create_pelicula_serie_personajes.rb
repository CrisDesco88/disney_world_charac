class CreatePeliculaSeriePersonajes < ActiveRecord::Migration[6.1]
  def change
    create_table :pelicula_serie_personajes do |t|
      t.references :pelicula_serie, null: false, foreign_key: true
      t.references :personaje, null: false, foreign_key: true

      t.timestamps
    end
  end
end
