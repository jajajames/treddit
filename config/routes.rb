Rails.application.routes.draw do
  root    'things#index'
  get     '/signup'       => 'users#new'
  get     '/login'        => 'sessions#new',      as: :login
  post    '/login'        => 'sessions#create',   as: :login_create
  delete  '/logout'       => 'sessions#destroy',  as: :logout
  get '/things/:thing_id/votes' => 'users#new' ## WTF?
  resources :things do
    resources :votes, only: [:update, :create]
    resources :comments
    member do
      get 'view' # collection member
    end
  end
  resources :users
end
