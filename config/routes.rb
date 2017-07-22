Rails.application.routes.draw do
  resources :contacts
  root "contacts#index"
  post "/hallo" => "contacts#hallo"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
