Rails.application.routes.draw do
  resources :todos do
    resources :todo_items
  end

  # resources :todo_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
