class PeliculaSerie < ApplicationRecord
    has_many :pelicula_serie_personajes
    has_many :personajes, through: :pelicula_serie_personajes
end
