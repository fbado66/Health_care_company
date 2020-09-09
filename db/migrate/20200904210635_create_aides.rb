class CreateAides < ActiveRecord::Migration[6.0]
  def change
    create_table :aides do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :town_you_live_in   
      t.string :town_you_can_work   
      t.string :password_digest
      t.string :certifications   
      t.timestamps
    end
  end
end
