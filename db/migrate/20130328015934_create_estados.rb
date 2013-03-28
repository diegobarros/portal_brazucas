class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.references :pais
      t.string :nome
      t.string :sigla

      t.timestamps
    end
    add_index :estados, :pais_id
  end
end
