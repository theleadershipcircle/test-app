Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  authenticated :user do
    get '/secure' => 'secure#index'
  end
end
