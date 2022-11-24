class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_user_not_found
    def show
        user = User.find(params[:id])
        render json: user, include: :items, status: :ok
    end

    private
    def render_user_not_found
        render json: {errors: 'User not found'}, status: :not_found
    end

end
