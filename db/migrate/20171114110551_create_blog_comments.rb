class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.integer :user_id
      t.integer :blog_id
      t.text :text
      t.string :image
      t.timestamps null: false
    end
  end
end
