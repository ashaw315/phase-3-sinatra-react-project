class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :favorite_quote, :string
    add_column :users, :favorite_game, :string
  end
end
