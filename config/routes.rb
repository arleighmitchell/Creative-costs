Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  get '/' => "home#index"

  post '/reports-new' => "reports#create"

  post '/item-add' => "reports#item_add"

  resources :reports
end
