class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cpf
      t.string :data_nascimento
      t.string :telefone
      t.string :email
      t.string :logradouro
      t.string :cep
      t.string :bairro
      t.string :complemento
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
