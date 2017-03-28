Rails.application.routes.draw do

  root "animals#index"

  get "/animals/new", to: "animals#new", as: 'new_animal'
  post "/animals", to: "animals#create"

  get "/animals", to: "animals#index"
  get "/animals/:id", to: "animals#show", as: "animal"

  get "/animals/:id/edit", to: "animals#edit", as: "edit_animal"
  patch "/animals/:id", to: "animals#update", as: "update_animal"


  delete "/animals/:id/", to: "animal#destroy", as: "delete_animal"

end
