class Personaje < ApplicationRecord
    has_many :pelicula_serie_personajes
    has_many :pelicula_series, through: :pelicula_serie_personajes
end
