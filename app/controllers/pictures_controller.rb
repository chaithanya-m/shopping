class PicturesController < ApplicationController
	# def index
 #    @users = User.all
 #  end
  def new
    @picture = Picture.new
  end

  def create
    @user = current_user
    current_user.picture.destroy if current_user.picture.present?
 
    @picture = Picture.create!(image: params[:picture][:image], imageable: current_user)
    redirect_to root_path
  end

end
