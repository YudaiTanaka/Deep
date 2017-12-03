Rails.application.routes.draw do
  devise_for :users,
  path: '',
  path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
  controllers: {omniauth_callbacks: 'omniauth_callbacks'}
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
