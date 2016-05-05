class UsersController < ApplicationController

    def create
    end

    private

    def user_params
        params.permit(:email, :password, :admin, :latitude, :longitude, :ip_address, :address)
    end
end
