Rails.application.routes.draw do
  resources :todos do
    resource :todo_items
    put 'todo_items/:id', to: 'todo_items#update'
    delete 'todo_items/:id', to: 'todo_items#destroy'

  end

  # resources :todo_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
