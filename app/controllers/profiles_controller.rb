class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all

    render("profiles/index.html.erb")
  end

  def show
    @profile = Profile.find(params[:id])

    render("profiles/show.html.erb")
  end

  def new
    @profile = Profile.new

    render("profiles/new.html.erb")
  end

  def create
    @profile = Profile.new

    @profile.source = params[:source]
    @profile.Title = params[:Title]
    @profile.Description = params[:Description]
    @profile.Link = params[:Link]
    @profile.Rating = params[:Rating]
    @profile.UserId = params[:UserId]

    save_status = @profile.save

    if save_status == true
      redirect_to("/profiles/#{@profile.id}", :notice => "Profile created successfully.")
    else
      render("profiles/new.html.erb")
    end
  end

  def edit
    @profile = Profile.find(params[:id])

    render("profiles/edit.html.erb")
  end

  def update
    @profile = Profile.find(params[:id])

    @profile.source = params[:source]
    @profile.Title = params[:Title]
    @profile.Description = params[:Description]
    @profile.Link = params[:Link]
    @profile.Rating = params[:Rating]
    @profile.UserId = params[:UserId]

    save_status = @profile.save

    if save_status == true
      redirect_to("/profiles/#{@profile.id}", :notice => "Profile updated successfully.")
    else
      render("profiles/edit.html.erb")
    end
  end

  def destroy
    @profile = Profile.find(params[:id])

    @profile.destroy

    if URI(request.referer).path == "/profiles/#{@profile.id}"
      redirect_to("/", :notice => "Profile deleted.")
    else
      redirect_to(:back, :notice => "Profile deleted.")
    end
  end
end
