Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'home#index'
  get '/main' => 'home#show', as: 'main'
  get '/allschools' => 'school#index', as: 'all_schools'

  get '/schools' => 'school#new', as: 'new_school'
  post '/schools' => 'school#create'






end
