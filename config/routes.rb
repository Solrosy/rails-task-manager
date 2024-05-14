Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Read (all) on /tasks
  get "tasks", to: "tasks#index"

  # Add a new task
  get "tasks/new", to: "tasks#new"

  # Add a post method to create a task
  post "tasks", to: "tasks#create"

   # Details of a task
   get "tasks/:id", to: "tasks#show", as: :task

   # Edit a task
   get "tasks/:id/edit", to: "tasks#edit", as: :edit

   # Update the task
   patch "tasks/:id", to: "tasks#update", as: :update


end
