Rails.application.routes.draw do
  devise_for :biz_users
  devise_for :users
  get 'pages/index'
  root to: 'pages#index'
end
