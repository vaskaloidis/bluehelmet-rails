Rails.application.routes.draw do

  resources :templates
  resources :template_categories
  resources :template_types
  resources :languages
  resources :contact_messages
  resources :user_infos
  resources :demos

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]
  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end


  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  get "/hello" => "clearance/users#new", as: "sign_up"
  # get "/sign_up" => "clearance/users#new", as: "sign_up"
  delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'

  get "/admin" => "admin#index"
  get "/customer" => "customer#index"

  root 'main#home'


  constraints Clearance::Constraints::SignedIn.new { |user| user.role == "admin" } do
    get "/admin " => "admin/dashboards#show"
    # root to: "admin/dashboards#show", as: :admin_root
  end

  constraints Clearance::Constraints::SignedIn.new { |user| user.role == "customer" } do
    get "/customer" => "customer#index"
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: "main#home"
  end

end
