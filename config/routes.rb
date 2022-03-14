Rails.application.routes.draw do
  devise_for :biz_users, controllers: {
    sessions:      'biz_users/sessions',
    #passwords:     'biz_users/passwords',
    #registrations: 'biz_users/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  get 'pages/index'
  root to: 'pages#index'
end
