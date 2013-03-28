class CreateVisitanteCredenciados < ActiveRecord::Migration
  def change
    create_table :visitante_credenciados do |t|
      t.references :usuario
      t.string :nome, :limit => 75, :null => false
      t.string :sobrenome, :limit => 80
      t.string :sexo
      t.date :nascimento
      t.string :telefone
      t.string :cpf

      t.timestamps
    end
    add_index :visitante_credenciados, :usuario_id
  end
end
