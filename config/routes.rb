Rails.application.routes.draw do
  resources :pizzas
  root 'pizzas#index'
  get 'edit_vote', to: "pizzas#update_vote"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
