Rails.application.routes.draw do
  get 'tasks/todomanager'
  get 'welcome/index'
  
  resources :tasks

  root 'welcome#index'
end
