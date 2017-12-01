class AddPostCategoryToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :post_category, :string
    add_column :tweets, :content_category, :string
  end
end
