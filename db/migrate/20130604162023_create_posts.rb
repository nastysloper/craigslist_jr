class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :description
      t.float :price
      t.string :title
      t.integer :user_id
      t.integer :category_id
      t.timestamps
  end
end