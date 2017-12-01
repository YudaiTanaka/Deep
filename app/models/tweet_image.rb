class TweetImage < ActiveRecord::Base
  belongs_to :tweet
  has_attached_file :avatar,
                    styles:  { medium: "100×100", thumb: "100×100" }
  validates_attachment_content_type :avatar,
                                    content_type: ["image/jpeg", "image/jpg", "image/png"]
end
