Rails.application.routes.draw do
  root 'welcome#index'
  get 'index' => 'welcome#index'
  resources :addresses
  resources :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
