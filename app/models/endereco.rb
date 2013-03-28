class Endereco < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :complemento, :latitude, :logradouro, :longitude, :numero
end
