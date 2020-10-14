Rails.application.routes.draw do
  resources :customers
  resources :purchase_orders
  resources :sales_person_logins
  resources :sales_person_details
  resources :subscriptions
  resources :client_statuses
  resources :client_types
  post 'sales_login', to: 'sales_person_details#sales_login'
  post 'purchase_order', to: 'purchase_orders#purchase_order'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
