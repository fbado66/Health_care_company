class CreateRequestServices < ActiveRecord::Migration[6.0]
  def change
    create_table :request_services do |t|
      t.belongs_to :service, null: false, foreign_key: true
      t.belongs_to :client, null: false, foreign_key: true
      t.date :starting_date
      t.integer :charge_rate
      t.string :skills

      t.timestamps
    end
  end
end
