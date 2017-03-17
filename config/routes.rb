Rails.application.routes.draw do
  resources :user_game_ques_and_ans
  resources :game_questions
  resources :user_games
  resources :games
  resources :questions
  root 'welcome#index'

  # get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'select_charactor' => 'games#select_charactor'
  post 'game_create' => 'games#game_create'
  get 'invite_friend' => 'games#invite_friend'

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  
end
