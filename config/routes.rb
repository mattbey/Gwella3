Rails.application.routes.draw do
  # Routes for the Content resource:
  # CREATE
  get "/contents/new", :controller => "contents", :action => "new"
  post "/create_content", :controller => "contents", :action => "create"

  # READ
  get "/contents", :controller => "contents", :action => "index"
  get "/contents/:id", :controller => "contents", :action => "show"

  # UPDATE
  get "/contents/:id/edit", :controller => "contents", :action => "edit"
  post "/update_content/:id", :controller => "contents", :action => "update"

  # DELETE
  get "/delete_content/:id", :controller => "contents", :action => "destroy"
  #------------------------------

  # Routes for the Video resource:
  # CREATE
  get "/videos/new", :controller => "videos", :action => "new"
  post "/create_video", :controller => "videos", :action => "create"

  # READ
  get "/videos", :controller => "videos", :action => "index"
  get "/videos/:id", :controller => "videos", :action => "show"

  # UPDATE
  get "/videos/:id/edit", :controller => "videos", :action => "edit"
  post "/update_video/:id", :controller => "videos", :action => "update"

  # DELETE
  get "/delete_video/:id", :controller => "videos", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
