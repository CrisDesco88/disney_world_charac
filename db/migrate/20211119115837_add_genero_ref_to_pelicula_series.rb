class AddGeneroRefToPeliculaSeries < ActiveRecord::Migration[6.1]
  def change
    add_reference :pelicula_series, :genero, null: false, foreign_key: true
  end
end
