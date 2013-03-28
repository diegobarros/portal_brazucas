class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.string :autor
      t.string :fonte
      t.text :conteudo

      t.timestamps
    end
  end
end
