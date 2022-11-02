class AddAuthorToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :author, :boolean
  end
end
