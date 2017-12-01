class Tweet < ActiveRecord::Base
    has_one :tweet_image, dependent: :destroy
    belongs_to :user
    validates_presence_of :user_id, :text
    has_many :tweet_comments
end
