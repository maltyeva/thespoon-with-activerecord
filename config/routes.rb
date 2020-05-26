Rails.application.routes.draw do

  # #CRUD

  # #READ

  # #read all of the restaurant
  # get '/restaurants', to: "restaurants#index"

  # #read one restaurant
  # # restaurants/158 -> Restaurant.find(158)
  # get '/restaurants/:id', to: "restaurants#show"

  # #CREATE

  # #1st get the blank form
  # get '/restaurants/new', to: "restaurants#new"

  # #2nd save the form to the db
  # post '/restaurants', to: "restaurants#create"

  # #UPDATE

  # #1st get the restaurant form
  # # restaurants/158/edit
  # get '/restaurants/:id/edit', to: "restaurants#edit"

  # #2nd send the info to the database
  # # restaurants/158
  # patch '/restaurants/:id', to: "restaurants#update"

  # #DESTROY
  # # restaurants/158
  # delete '/restaurants/:id', to: "restaurants#destroy"

  resources :restaurants
end
