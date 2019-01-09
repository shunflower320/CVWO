Rails.application.routes.draw do
  resources :tasks
  get 'tasks/todomanager'
  get 'welcome/index'
  get '/tagged', to: "tasks#tagged", as: :tagged
  
  resources :tasks

  root 'welcome#index'
end
