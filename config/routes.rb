Rails.application.routes.draw do

  root 'home#index'

  get 'home/index'

  get 'black_jack/index'
  get 'black_jack/new'
  get 'black_jack/:id', to: 'black_jack#show', as: 'black_jack'
  get 'black_jack/:id/hit', to: 'black_jack#hit', as: 'black_jack_hit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
