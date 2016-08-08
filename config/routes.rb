Rails.application.routes.draw do
  patch "completed" => "lesson_progressions#set_status"

  # overwrite devise default paths
  devise_for :user, :path => 'users', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }, 
  controllers: {omniauth_callbacks: "omniauth_callbacks"}
  
  # Direct path to chapters (no controller in url)
  resources :chapters, :path => ''

  # Friendly_id config for lessons
  resources :chapters, :path => '' do
    resources :lessons, :path => ''
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end

end
