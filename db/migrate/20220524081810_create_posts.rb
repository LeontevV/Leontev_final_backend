class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :description
      t.text :tag
      t.text :image
      t.integer :user_id
      t.boolean :is_deleted, default: false
      t.timestamps
    end
  end
end
