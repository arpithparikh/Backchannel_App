class CreateVotePosts < ActiveRecord::Migration
  def change
    create_table :vote_posts do |t|
      t.integer :vote_post_count
      t.references :post
      t.references :user

      t.timestamps
    end
    add_index :vote_posts, :post_id
    add_index :vote_posts, :user_id
  end
end
