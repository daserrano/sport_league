Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

    #get '/admin' => 'admin#index', as: 'home'
    get '/api' => 'application#index', defaults: { format: :json }
end
