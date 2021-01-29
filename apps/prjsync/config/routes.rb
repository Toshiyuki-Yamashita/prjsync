Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :redmine do
    root "top#index"
  end

  namespace :jira do
    root "top#index"
  end
end
