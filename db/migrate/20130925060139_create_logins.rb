class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :pwd
      t.references :user

      t.timestamps
    end
    add_index :logins, :user_id
  end
end
