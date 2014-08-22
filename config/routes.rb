UnPoliticsApp::Application.routes.draw do
  
  root "states#index"
  resources :states
  resources :politicians, only: [:index, :show, :timeline] do
    resources :written_statements
  end   

  get "politicians/:id/timeline", to: "politicians#timeline", as: "politician_timeline"
  post "politicians/:politician_id/written_statements/new", to: "written_statements#create"

 	get "written_statements/create"
  devise_for :users

end

  