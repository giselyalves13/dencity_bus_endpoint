Rails.application.routes.draw do
  resources :buses
  put 'buses/update_load', to: 'buses#update_load'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
