class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render :json =>@users 
  end

  def show
    @users = User.where(["name = ?", params[:id]])
    render :json => @users,status: 202
  end

  def create
    @oldUser = User.where("device_token = ?", params[:device_token])

    if @oldUser.present?
      return render json: {error: "already added"}, status: 404
    end

    @newUser = User.create(user_params)
    render :json => @newUser, status: :created # JSON形式
  end

  def user_params
    params.permit(:name, :device_token, :fb_id)
  end

  def login
    @user = User.where(["name = ? and fb_id = ?", params[:name], params[:fb_id]])
    render :json => @user,status: 202
  end

end
