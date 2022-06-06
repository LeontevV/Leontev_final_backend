
Rails.application.routes.draw do
  devise_for :users,
              controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
              }
  resources :posts
  get '/posts/:user_id', to: 'posts#show'
  get '/member-data', to: 'members#show'
end