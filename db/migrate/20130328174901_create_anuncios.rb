class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.references :anunciante
      t.string :titulo
      t.text :descricao
      t.string :url_anuncio

      t.timestamps
    end
    add_index :anuncios, :anunciante_id
  end
end
