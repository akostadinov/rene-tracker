Rails.application.routes.draw do
  resources :volunteers do
    resources :reports
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
