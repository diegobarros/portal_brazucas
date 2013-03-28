class Pais < ActiveRecord::Base
  has_many :estados
  attr_accessible :nome, :sigla, :url_imagem_bandeira
end
