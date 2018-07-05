Rails.application.routes.draw do
  scope 'api' do
    scope 'v1' do
      resources :survivors, only: [:create,:update, :show]
    end
  end
end
