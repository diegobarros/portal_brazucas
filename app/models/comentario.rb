class Comentario < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :noticia
  attr_accessible :texto
end
