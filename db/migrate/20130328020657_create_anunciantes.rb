class CreateAnunciantes < ActiveRecord::Migration
  def change
    create_table :anunciantes do |t|
      t.references :usuario
      t.references :endereco
      t.string :nome, :limit => 80, :null => false
      t.string :razao_social
      t.string :cnpj
      t.string :telefone
      t.string :url_website

      t.timestamps
    end
    add_index :anunciantes, :usuario_id
    add_index :anunciantes, :endereco_id
  end
end
