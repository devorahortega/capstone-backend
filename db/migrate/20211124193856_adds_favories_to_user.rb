class AddsFavoriesToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :favorites_id, :integer
  end
end
