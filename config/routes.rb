UnPoliticsApp::Application.routes.draw do
  
  root "states#index"
  resources :states
  resources :politicians, only: [:index, :show, :timeline] do
    resources :written_statements
  end   
  # resources :written_statements


  # get "politicians", to: "politicians#index", as: "politicians"
  # get "politicians/new", to: "politicians#new", as: "new_politician"
  # post 


  get "politicians/:id/timeline", to: "politicians#timeline", as: "politician_timeline"
  post "politicians/:politician_id/written_statements/new", to: "written_statements#create"
  # post create form for written statements

end