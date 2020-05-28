Rails.application.routes.draw do
  root to: 'admins/subscriptions#index'

  get 'admin/subscriptions', to: 'admins/subscriptions#index'
end
