UnPoliticsApp::Application.routes.draw do
  
  root "states#index"
  resources :states
  resources :politicians

end