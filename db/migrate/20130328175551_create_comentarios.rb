class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :usuario
      t.references :noticia
      t.text :texto

      t.timestamps
    end
    add_index :comentarios, :usuario_id
    add_index :comentarios, :noticia_id
  end
end
