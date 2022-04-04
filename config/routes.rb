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
        resources :post_matches, only: [:new, :create, :show, :edit, :update]
    end

  end

  resources :users, only: :show
  resources :biz_users, only: :show

  resources :books, only: [:index, :show] do
    collection do
      get 'search'
    end
  end

end
