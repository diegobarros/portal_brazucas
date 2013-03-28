class Anunciante < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :endereco
  attr_accessible :cnpj, :nome, :razao_social, :telefone, :url_website, :usuario, :endereco
end
