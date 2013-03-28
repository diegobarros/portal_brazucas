class Anuncio < ActiveRecord::Base
  belongs_to :anunciante
  attr_accessible :descricao, :titulo, :url_anuncio
end
