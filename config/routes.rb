Rails.application.routes.draw do
  resources :games
  resources :scoreboards
  resources :users

  get "clear-board", to: "games#clear_board"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
