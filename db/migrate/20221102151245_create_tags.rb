class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :title
      t.string :meta_title
      t.string :slug
      t.string :content

      t.timestamps
    end
  end
end
