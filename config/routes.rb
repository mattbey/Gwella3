Rails.application.routes.draw do

  # Routes for the Profile resource:
  # CREATE
  get "/profiles/new", :controller => "profiles", :action => "new"
  post "/create_profile", :controller => "profiles", :action => "create"

  # READ
  get "/profiles", :controller => "profiles", :action => "index"
  get "/profiles/:id", :controller => "profiles", :action => "show"

  # UPDATE
  get "/profiles/:id/edit", :controller => "profiles", :action => "edit"
  post "/update_profile/:id", :controller => "profiles", :action => "update"

  # DELETE
  get "/delete_profile/:id", :controller => "profiles", :action => "destroy"
  #------------------------------

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

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      get("/login", {:controller => "loginscreen", :action => "index"})
      get("/", {:controller => "loginscreen", :action => "index"})


end
