class UsersController < ApplicationController

  before_action :set_user, only: %i[show update destroy]

  def index
    render json: User.scan.find_all.map(&:to_h)
  end

  def show
    render json: @user.to_h
  end

  def create
    user = User.new(
      user_params.merge(uuid: SecureRandom.uuid)
    )
    user.save
    render json: user.to_h
  end

  def update
    @user.update(user_params)
    render json: @user.to_h
  end

  def destroy
    @user.delete!
    render json: { status: :ok }
  end

  private

  def set_user
    @user = User.find(uuid: params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email)
  end
end
