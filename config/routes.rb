Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'home#index'
  get '/main' => 'home#show', as: 'main'
  get '/allschools' => 'school#index', as: 'all_schools'
  # get '/allmedications' => 'medication#index', as: 'all_medications'

  get '/schools' => 'school#new', as: 'new_school'
  get '/schools/:id' => 'school#show', as: 'school_info'
  post '/schools' => 'school#create'


  get '/medications' => 'medication#new', as: 'new_medication'
  put '/medications' => 'medication#update_med'

  get '/medicationcategories' => 'medication_category#new', as: 'new_medication_category'
  post '/medicationcategories' => 'medication_category#create'

end
