FinalYearProject::Application.routes.draw do
  get "static_pages/new"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'static_pages#index'
end
