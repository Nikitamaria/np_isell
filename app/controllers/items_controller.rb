class ItemsController < ApplicationController
 def new
  	@item = Item.new
  end

 def edit
 end

  def create
  	@item = Item.new(profile_params)
  	@item.user = current_user
  	respond_to do |format|
 
  	if @profile.save
  		flash[:notice] = "You have created a new profile"
  		redirect_to profile_path(@profile)
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
