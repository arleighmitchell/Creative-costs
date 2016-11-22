Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  get '/' => "home#index"

  post '/reports-new' => "reports#create"

  post '/item-add' => "reports#item_add"

  post '/delete-report' => 'reports#delete_report'

  post '/add-one' => 'reports#add_one'

  post '/subtract-one' => 'reports#subtract_one'

  resources :reports, :teachers
  
end