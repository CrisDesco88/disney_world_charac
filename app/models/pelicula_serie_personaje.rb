class PeliculaSeriePersonaje < ApplicationRecord
  belongs_to :pelicula_serie
  belongs_to :personaje
end
