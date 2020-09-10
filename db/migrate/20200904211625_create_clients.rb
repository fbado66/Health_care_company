class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :town_you_live_in
      t.string :password_digest
      t.string :preference_on_aides
      t.integer :phone, :limit => 8  
      t.timestamps
    end
  end
end
