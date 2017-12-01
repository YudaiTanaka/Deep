class AddAttachmentAvatarToTweetImages < ActiveRecord::Migration
  def self.up
    change_table :tweet_images do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :tweet_images, :avatar
  end
end
