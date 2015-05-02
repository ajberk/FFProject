Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :positions, only: [:index, :show]
  end
  root to: 'site#root'
end
