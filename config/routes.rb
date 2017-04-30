Rails.application.routes.draw do
# Home
# get("/photos", {:controller => "photos", :action => "home"})

#create

get("/photos/new", {:controller => "photos", :action => "new_form"})
get("/create_photo", {:controller => "photos", :action => "create_row"})
#read
get("/photos", {:controller => "photos", :action => "index"})
get("/photos/:id_number", {:controller => "photos", :action => "show"})

#update
get("/photos/:the_id/edit", {:controller => "photos", :action => "edit_form"})
#delete

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
