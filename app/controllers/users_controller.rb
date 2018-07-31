class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.create(username: params[:username], email: params[:email], bio: params[:bio]
    )

    if @user.errors.any?
      redirect_to('/users/error')
    else
      redirect_to("/users/#{@user.username}")
    end
  end


  def show
    @user = User.find_by(username:params[:id])
  end

end
