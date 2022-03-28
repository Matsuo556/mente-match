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
  # ユーザー登録失敗後に/usersではなく/users/sign_upへ遷移させる
  devise_scope :users do
    get '/users', to: redirect("/users/sign_up")
  end

  get 'pages/index'
  root to: 'pages#index'
  
  resources :user_posts do
    collection do
      get 'search'
    end
    resources :post_rooms, only: [:create, :index, :destroy] do
        resources :post_messages, only: [:create]
      # resources :user_post_messages, only: [:index, :create]
      # resources :biz_user_post_messages, only: [:index, :create]
    end

  end

  resources :users, only: :show

  resources :biz_users, only: :show


end
