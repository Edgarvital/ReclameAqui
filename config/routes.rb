Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/index'
  resources :usuarios do
    resources :reclamacaos
  end
  root 'sessions#index'
  get 'index' => 'sessions#index'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
