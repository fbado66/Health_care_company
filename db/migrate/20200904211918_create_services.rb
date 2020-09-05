class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :content
      t.string :skills

      t.timestamps
    end
  end
end
