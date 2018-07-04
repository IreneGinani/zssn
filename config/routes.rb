Rails.application.routes.draw do
  scope 'api' do
    scope 'v1' do
      resources :survivors, only: [:create, :show]
    end
  end
end
