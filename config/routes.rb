Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :contacts
      resources :posts do
        resources :comments
        collection do
          get 'top_stories'
        end
      end
    end
  end
end
