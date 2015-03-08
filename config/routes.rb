FinalYearProject::Application.routes.draw do
  root 'static_pages#index'

  post 'sync'  , to: 'sync#fetch', as: 'sync' , defaults: {format: :json}

  resources :events do
    post :update_row_order, on: :collection
  end
  scope '/devices' do
    post 'switch'  , to: 'devices#switch', as: 'switch' , defaults: {format: :json}
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  
end
