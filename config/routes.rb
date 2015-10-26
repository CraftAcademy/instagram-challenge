Rails.application.routes.draw do
  resources :post
  root 'post#index'
end
