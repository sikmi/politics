Rails.application.routes.draw do

  root "lp/welcome#index"

  scope "/lp", module: "lp", as: :lp do
    resources :contacts, only: [:new,:show]
  end

  if Rails.env.development?
    scope "dev", module: "dev", as: :dev do
      resources :designs, only: [:index]
    end
  end

end
