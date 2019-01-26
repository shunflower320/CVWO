Rails.application.routes.draw do
  get 'tasks/todomanager'
  get 'welcome/index'
  get '/tagged', to: "tasks#tagged", as: :tagged
  get 'tags/:tag', to: 'tasks#tagged', as: "tag"
  
  resources :tasks

  root 'welcome#index'
end