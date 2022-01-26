class AddColumnsToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :hired, :boolean
  end
end
