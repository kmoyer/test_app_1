Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "tests#index"
  # Routes for the Test resource:
  # CREATE
  get "/tests/new", :controller => "tests", :action => "new"
  post "/create_test", :controller => "tests", :action => "create"

  # READ
  get "/tests", :controller => "tests", :action => "index"
  get "/tests/:id", :controller => "tests", :action => "show"

  # UPDATE
  get "/tests/:id/edit", :controller => "tests", :action => "edit"
  post "/update_test/:id", :controller => "tests", :action => "update"

  # DELETE
  get "/delete_test/:id", :controller => "tests", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
