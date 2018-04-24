Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  devise_for :users, path: "auth", path_names: { 
  	sign_in: "login", 
  	sign_out: "logout", 
  	password: "secret", 
  	confirmation: "verification", 
  	unlock: "unblock", 
  	registration: "register", 
  	sign_up: "cmon_let_me_in" 
  }
  
  # Serve websocket cable requests in-process
  mount ActionCable.server => "/cable"
   
  resources :chat_rooms, only: [:show, :index, :new, :create]
  resources :messages, only: :create
end
