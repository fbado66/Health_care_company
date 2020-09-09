class CreateRequestJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :request_jobs do |t|
      t.string :location
      t.date :starting_date
      t.integer :pay_rate
      t.integer :hours
      t.string :comments
      t.belongs_to :aide, null: false, foreign_key: true
      t.belongs_to :request_service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
