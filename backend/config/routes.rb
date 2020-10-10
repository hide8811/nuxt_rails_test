Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :hello, onrly:[:index]
    end
  end
end
