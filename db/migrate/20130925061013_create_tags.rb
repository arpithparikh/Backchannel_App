class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :tag_id, :uniqueness =>true
      t.string :tag_name
      t.references :user

      t.timestamps
    end
    add_index :tags, :user_id
  end
end
