Rails.application.routes.draw do
  root 'application#top'
  get 'game/janken_main', to: 'game#janken_main', as: 'janken_main'
  get 'game/saisho', to: 'game#saisho', as: 'saisho'
  get 'game/janken', to: 'game#janken', as: 'janken'
  get 'game/pon', to: 'game#pon', as: 'pon'
  get 'game/aiko', to: 'game#aiko', as: 'aiko'
  get 'game/atti', to: 'game#atti', as: 'game_atti'
  get 'game/hoi', to: 'game#hoi', as: 'hoi'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
