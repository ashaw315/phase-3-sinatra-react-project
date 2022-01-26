class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.integer :user_id
      t.string :buzzword
    end
  end
end
