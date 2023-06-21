class UsersController < ApplicationController

    def show
        user = User.find_by(id: params[:id])
        render json: user, status: :ok, include: :items
    end
end
