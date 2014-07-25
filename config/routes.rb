UnPoliticsApp::Application.routes.draw do
  
  root "states#index"
  resources :states
  resources :politicians    
  resources :written_statements


  # get "politicians", to: "politicians#index", as: "politicians"
  # get "politicians/new", to: "politicians#new", as: "new_politician"
  # post 


  get "politicians/:id/timeline", to: "politicians#timeline", as: "politician_timeline"
  get "politicians/:id/new_written", to: "politicians#new_written", as: "politician_new_written"

end