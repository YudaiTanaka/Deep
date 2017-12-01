Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :users, only: [:show, :edit, :update]
  resources :tweets do
    resources :tweet_comments
  end
  resources :tweet_images
  resources :blogs
  resources :blog_comments
  resources :blog_iamges
  resources :likes
  root :to => 'tweets#index'
end
