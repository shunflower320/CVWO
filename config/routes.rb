Rails.application.routes.draw do
  get 'tasks/todomanager'
  get 'welcome/index'
  get '/tagged', to: "tasks#tagged", as: :tagged
  
  resources :tasks

  root 'welcome#index'
end