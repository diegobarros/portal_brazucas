class CreateVisitanteCredenciados < ActiveRecord::Migration
  def change
    create_table :visitante_credenciados do |t|
      t.references :usuario
      t.string :nome
      t.string :sobrenome
      t.string :sexo
      t.date :nascimento
      t.string :telefone
      t.string :cpf

      t.timestamps
    end
    add_index :visitante_credenciados, :usuario_id
  end
end
