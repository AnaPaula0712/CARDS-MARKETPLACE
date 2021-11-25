Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/purchase', to: 'pages#purchase'
  get '/sale', to: 'pages#sale'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cards do
    collection do
      get :search
    end
    resources :orders, only: %i[new create]
  end
  resources :cards, only: %i[new create destroy] do
    resources :questions, only: %i[new create destroy]
  end
end
