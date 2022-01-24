class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name 
      t.string :password
      t.string :position
      t.string :user_despcription
      t.string :skills
    end
  end
end
