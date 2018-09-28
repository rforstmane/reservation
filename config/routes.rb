Rails.application.routes.draw do
  resources :calendars do
    collection do
      get 'remote_calendars'
    end
  end
  resources :bicycles
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


