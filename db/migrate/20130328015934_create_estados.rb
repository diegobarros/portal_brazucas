class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.references :pais
      t.string :nome, :null => false
      t.string :sigla, :limit => 2

      t.timestamps
    end
    add_index :estados, :pais_id
  end
end
