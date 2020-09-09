class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :sub_title
      t.string :content_1
      t.string :content_2
      t.string :responsabilities
      t.string :benefits
      t.string :work_schedule
      t.string :salary_content
      t.string :skills

      t.timestamps
    end
  end
end
