Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get '/hello_world', to: 'hello_world#index'
      resources :teams
    end
  end
end
