class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.references :estado
      t.string :nome
      t.string :sigla
      t.string :area
      t.string :populacao
      t.string :densidade
      t.string :altitude
      t.string :clima
      t.string :fuso_horario
      t.string :url_website

      t.timestamps
    end
    add_index :cidades, :estado_id
  end
end
