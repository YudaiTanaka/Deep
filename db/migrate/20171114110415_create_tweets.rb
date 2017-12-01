class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :title
      t.text   :text
      t.integer :likescount
      t.string  :category
      t.timestamps null: false
    end
  end
end
