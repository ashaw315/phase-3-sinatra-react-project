class AddColumnToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :candidate_id, :integer
  end
end
