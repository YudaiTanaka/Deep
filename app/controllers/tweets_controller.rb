class TweetsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def create
    tweet = Tweet.create(post_category: params[:post_category], content_category: params[:content_category], text: params[:text], user_id: current_user.id)
    TweetImage.create(avatar: params[:avatar], tweet_id: tweet.id)
    redirect_to :root and return
  end

  def new
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def show
    @tweet = Tweet.find(params[:id])
    @tweet_comments = @tweet.tweet_comments.includes(:user)
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(tweet_params)
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
    end
  end

  private
  def tweet_params
      params.permit(:text, :post_category, :content_category)
  end

  def tweet_image_params
      params.permit(:image, :tweet_id)
  end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
  end

  def create_params
    params.require(:tweet).permit(:text, :post_category, :content_category).merge(user_id: current_user.id)
  end

end
