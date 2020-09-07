class CreateAides < ActiveRecord::Migration[6.0]
  def change
    create_table :aides do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :address   
      t.string :password_digest
      t.string :role   
      t.references :user
      t.timestamps
    end
  end
end
