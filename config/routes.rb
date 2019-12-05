Rails.application.routes.draw do
  # Routes for the Checkin resource:

  # CREATE
  get("/checkins/new", { :controller => "checkins", :action => "new_form" })
  post("/create_checkin", { :controller => "checkins", :action => "create_row" })

  # READ
  get("/checkins", { :controller => "checkins", :action => "index" })
  get("/checkins/:id_to_display", { :controller => "checkins", :action => "show" })

  # UPDATE
  get("/checkins/:prefill_with_id/edit", { :controller => "checkins", :action => "edit_form" })
  post("/update_checkin/:id_to_modify", { :controller => "checkins", :action => "update_row" })

  # DELETE
  get("/delete_checkin/:id_to_remove", { :controller => "checkins", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
