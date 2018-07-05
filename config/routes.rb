Rails.application.routes.draw do
  scope 'api' do
    scope 'v1' do
      resources :survivors, only: [:create,:update, :show] do
        collection do
          put ':id/report' => 'survivors#report'
          end
        end
    end
  end
end
