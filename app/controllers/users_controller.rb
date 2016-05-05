class UsersController < ApplicationController

    def create
        @existing_user = User.find_by_email(params[:email])
        if @existing_user
            render json: {error: "Email is already registered."}
        else
            @user = User.new(user_params)

            @ip = request.remote_ip
            @geocoder_result = request.location

            @user.ip_address = @ip
            @user.latitude = @geocoder_result.latitude
            @user.longitude = @geocoder_result.longitude
            @user.address = @geocoder_result.address

            if @user.save
                render json: {success: "Email successully registered, thanks!"}
            else
                render json: {error: "Uh oh, something went wrong on our end. Please try again later!"}
            end
        end
    end

    def index
        @users = User.all

        render json: @users
    end

    private

    def user_params
        params.permit(:email, :password, :admin, :latitude, :longitude, :ip_address, :address)
    end
end
