class ProfilesController < ApplicationController
  def new
  	@profile  = Profile.new
  end

  def create

  	@profile = current_user.buld_profile(profile_params)
  	if @profile.save
  		flash[:notice] = "You have created a new profile"
  		redirect_to profile_path
  	else
  		render :new
  	end

  end

  def index
  	@profile = Profile.all
  end

  def show
  	@profile = current_user.build_profile(profile_params)
  end

  private

  def profile_params
  	params.require(:profile).permit(:first_name, :last_name, :biography, :picture)
  end
end
