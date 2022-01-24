class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :job_title
      t.string :job_description
      t.integer :hourly_rate
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
