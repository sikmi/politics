Rails.application.routes.draw do

  root "lp/welcome#index"

  scope "/lp", module: "lp", as: :lp do
    resources :contacts, only: [:new,:show]
  end

end
