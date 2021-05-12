Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks', to: 'tasks#index'
  
  get 'tasks/add'
  post 'tasks/add'
  
  get 'tasks/:id', to: 'tasks#show'
  #get 'tasks/show'
  
  get 'tasks/edit/:id', to: 'tasks#edit'
  patch 'tasks/edit/:id', to: 'tasks#edit'
  
  get 'tasks/delete/:id', to: 'tasks#delete'
  
  resources :posts, constraints: { format: 'html' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end