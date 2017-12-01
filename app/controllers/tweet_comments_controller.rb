class TweetCommentsController < ApplicationController
  def new
    @tweet = Tweet.find(params[:tweet_id])
    @tweet_comment = Tweet_comment.new
    @tweet_comment.tweet_id = @tweet.id
  end

  def create
    @comment = TweetComment.create(text: comment_params[:text], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
    redirect_to "/tweets/#{@comment.tweet.id}"
  end

  private
  def comment_params
    params.permit(:text, :tweet_id)
  end
end
