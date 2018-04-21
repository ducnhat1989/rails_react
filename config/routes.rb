Rails.application.routes.draw do
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
