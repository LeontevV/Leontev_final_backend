
Rails.application.routes.draw do
  devise_for :users,
              controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
              }
  get '/member/:id', to: 'members#show'
  # patch '/member/:id', to: 'members#update'
  resources :posts
  get '/posts/:user_id', to: 'posts#show'
  # post '/posts', to: 'posts#create'
  put '/users/:id', to: 'users#update'
end