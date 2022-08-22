class UsersController < ApplicationController
  #before_action :edit_param, only: [:edit]
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    
    @user = User.new(user_params) 

    if @user.save 
      flash[:notice] = "Welcome #{@user.first_name}, U have successfully signed up"
      redirect_to root_path
    else
      render 'new'
    end
  end 

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:notice] = "Your account information was updated successfully"
      redirect_to user_path
    else
      render 'edit'
    end
  end

  def destroy 
    @user = User.find(params[:id])
    @user.destroy 

    redirect_to user_path, status: :see_other
  end

  
  private 

  # def edit_param
  #   params.permit(:id)
  # end


  def user_params 
    params.require(:user).permit(:first_name, :last_name, :date_of_birth, :email, :password, :mobile)
  end
end
