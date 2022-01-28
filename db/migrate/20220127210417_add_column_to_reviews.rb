class AddColumnToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :review_name, :string
  end
end
