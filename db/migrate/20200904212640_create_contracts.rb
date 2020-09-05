class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.belongs_to :aide, null: false, foreign_key: true
      t.belongs_to :service, null: false, foreign_key: true
      t.date :availability_to_start
      t.integer :pay_rate

      t.timestamps
    end
  end
end
