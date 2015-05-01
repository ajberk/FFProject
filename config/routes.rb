Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :quarterbacks, only: [:index]
  end
end
