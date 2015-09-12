class Api::V1::FriendsController < ApplicationController

  def create
    @Oldfrined = Friend.where(from: params[:from], to: params[:to])
    if @Oldfrined.present?
      return render json: {error: "already added"}, status: 404
    end

    @friend = Friend.create(friend_params)
    render :json => @friend, status: :created # JSON形式
  end

    def friend_params
      params.permit(:from, :to)
    end


end
