YoApi::Application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :friends
      get '/users/:name/:fb_id' => 'users#login'
    end 
  end
end