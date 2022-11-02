class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :meta_title
      t.string :slug
      t.text :content

      t.timestamps
    end
  end
end
