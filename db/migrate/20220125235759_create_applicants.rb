class CreateApplicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      t.integer :user_id
      t.integer :listing_id
    end 
  end
end
