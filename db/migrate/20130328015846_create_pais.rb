class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :nome
      t.string :sigla
      t.string :url_imagem_bandeira

      t.timestamps
    end
  end
end
