class CreateTweetImages < ActiveRecord::Migration
  def change
    create_table :tweet_images do |t|
      t.string :image
      t.integer :tweet_id
      t.timestamps null: false
    end
  end
end
