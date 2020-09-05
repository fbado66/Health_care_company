class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :address
      t.string :medicaid_number
      t.string :password_digest
      t.string :role

      t.timestamps
    end
  end
end
