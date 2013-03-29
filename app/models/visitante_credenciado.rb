class VisitanteCredenciado < ActiveRecord::Base
  belongs_to :usuario
  attr_accessible :cpf, :nascimento, :nome, :sexo, :sobrenome, :telefone, :usuario
end
