class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_id, :uniqueness =>true
      t.string :category_name

      t.timestamps
    end
  end
end
