class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id,:uniqueness =>true
      t.string :name
      t.string :email_id, :uniqueness =>true
      t.integer :phone
      t.string :role

      t.timestamps
    end
  end
end
