class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
       t.references :cidade
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.float :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
