class CreateVoteReplies < ActiveRecord::Migration
  def change
    create_table :vote_replies do |t|
      t.integer :vote_reply_count
      t.references :reply
      t.references :user

      t.timestamps
    end
    add_index :vote_replies, :reply_id
    add_index :vote_replies, :user_id
  end
end
