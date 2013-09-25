class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :reply
      t.references :post
      t.references :user
      t.integer :reply_id, :uniqueness =>true
      t.timestamps
    end
    add_index :replies, :post_id
    add_index :replies, :user_id
  end
end
