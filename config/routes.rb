Rails.application.routes.draw do

  root "home#index"
  get  "/candidate" , to: "home#candidate", as: :candidate
  get  "/detail/:data" , to: "home#detail", as: :detail
  get "admindata/:d" , to: "home#admindata", as: :admindata
  get  "/admin" , to: "home#admin", as: :admin
  get  "apply" , to: "home#apply", as: :apply
  post "/create_detail/:id" , to: "home#create_detail" ,as: :create_detail
  get "data/:id", to: "home#data",as: :data
  post "updatedata/:id", to: "home#updatedata",as: :updatedata
  get "interviewer", to: "home#interviewer", as: :interviewer
  get "all_user_list", to: "home#all_user_list", as: :all_user_list
  get "track/:id" , to: "home#track", as: :track
  get "setdrivedate/", to: "home#setdrivedate", as: :setdrivedate
  post "set/", to: "home#set" , as: :set
  get "all_date/", to: "home#all_date" , as: :all_date
  get "remove/:id", to: "home#remove" ,as: :remove
  get "edit_user_profile/", to: "home#edit_user_profile" , as: :edit_user_profile
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }

  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
