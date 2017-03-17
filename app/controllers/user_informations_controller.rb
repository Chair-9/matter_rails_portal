class UserInformationsController < ApplicationController
  before_action :set_user

  def new
    @user_informations = UserInformation.new
  end

  def create
    @user_informations = @user.user_informations.new(user_information_params)
    if @user_informations.save
      redirect_to user_informations_path(@user_informations), notice: 'Created successfully!'
    else
      render :new
    end
  end

  def show
    @user_informations = UserInformation.find(params[:id])
  end

  def edit
    @user_informations = UserInformation.find(params[:id])
  end

  def update
    @user_informations = UserInformation.find(params[:id])
    if @user_informations.update(user_information_params)
      redirect_to user_information_path(@user_informations), notice: 'Updated successfully!'
    else
      render :edit
    end
  end


  private

  def user_information_params
    params.require(:user_information).permit(:first_name, :last_name, :role, :business_name)
  end

  def set_user
    @user = current_user
  end


end
