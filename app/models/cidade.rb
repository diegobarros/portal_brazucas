class Cidade < ActiveRecord::Base
  belongs_to :estado
  attr_accessible :altitude, :area, :clima, :densidade, :fuso_horario, :nome, :populacao, :sigla, :url_website
end
