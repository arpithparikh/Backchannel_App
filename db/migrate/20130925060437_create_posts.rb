class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_id, :uniqueness =>true
      t.text :title
      t.text :post_content
      t.datetime :last_access_timestamp
      t.datetime :posted_date
      t.references :category
      t.references :tag
      t.references :user

      t.timestamps
    end
    add_index :posts, :category_id
    add_index :posts, :tag_id
    add_index :posts, :user_id
  end
end
