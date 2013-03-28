class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :nome, :limit => 80, :null => false
      t.string :sigla, :limit => 4
      t.string :url_imagem_bandeira

      t.timestamps
    end
  end
end
