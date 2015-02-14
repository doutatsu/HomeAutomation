FinalYearProject::Application.routes.draw do
  root 'static_pages#index'

  post 'sync'  , to: 'sync#fetch', as: 'sync' , defaults: {format: :json}

  resources :events
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  
end
