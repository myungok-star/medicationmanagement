Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'home#index'
  get '/main' => 'home#show', as: 'main'
  get '/allschools' => 'school#index', as: 'all_schools'

  get '/newschool' => 'school#new', as: 'new_school'
  get '/schools/:id' => 'school#show', as: 'school_info'
  post '/newschool' => 'school#create'

  get '/newmedtype' => 'medication_category#new', as: 'new_medication_category'
  post '/newmedtype' => 'medication_category#create'

  get '/newmedication' => 'medication#new', as: 'new_medication'
  post '/newmedication' => 'medication#update_med'

end
