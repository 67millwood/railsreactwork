Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :coversations, only: [:index, :create]
  resources :messages, only: [:create]
  mount ActionCable.server => '/cable'
end
