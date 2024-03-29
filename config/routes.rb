Rails.application.routes.draw do
  #get 'user/create'
  match 'apitoken', to: 'user#apikey', via: [:get]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :booktickets
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
