UnPoliticsApp::Application.routes.draw do
  
  root "states#index"
  resources :states
  resources :politicians

  # get "politicians", to: "politicians#index", as: "politicians"
  # get "politicians/new", to: "politicians#new", as: "new_politician"
  # post 


  get "politicians/:id/timeline", to: "politicians#timeline", as: "politician_timeline"

end