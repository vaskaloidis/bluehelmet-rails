Rails.application.routes.draw do

  resources :works
  resources :work_types
  resources :work_categories
  resources :templates
  resources :template_categories
  resources :template_types
  resources :languages
  resources :contact_messages
  resources :user_infos
  resources :demos

  resources :passwords, controller: "clearance/passwords",
            only: [:create, :new]
  resource :session, controller: "session",
           only: [:create]
  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get"/admin/custom/:id" => "admin#view_customer", as: "admin_view_customer"

  get "/login" => "clearance/sessions#new", as: "sign_in"
  get "/welcome" => "clearance/users#new", as: "sign_up"
  # get "/sign_up" => "clearance/users#new", as: "sign_up"
  get '/logout' => 'clearance/sessions#destroy', as: 'sign_out'

  get "/admin" => "admin#index", as: 'admin_section'
  get "/customer" => "customer#index", as: 'customer_section'

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
