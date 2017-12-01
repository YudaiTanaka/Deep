class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text   :text
      t.integer :likescount
      t.string  :category
      t.timestamps null: false
    end
  end
end
