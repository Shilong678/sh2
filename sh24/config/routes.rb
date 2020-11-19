Rails.application.routes.draw do
  root 'post_checkers#index'
  resources :post_checkers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
