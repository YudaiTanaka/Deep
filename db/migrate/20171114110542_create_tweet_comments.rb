class CreateTweetComments < ActiveRecord::Migration
  def change
    create_table :tweet_comments do |t|
      t.integer :user_id
      t.integer :tweet_id
      t.text :text
      t.string :image
      t.timestamps null: false
    end
  end
end
